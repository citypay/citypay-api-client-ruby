require 'json'
require 'time'
require 'citypay_api_client/models/card_holder_account'
require 'citypay_api_client/models/card'
require 'citypay_api_client/models/contact_details'

RSpec.describe CityPayApiClient::CardHolderAccount do
  let(:contact) { CityPayApiClient::ContactDetails.new(firstname: 'Joe') }
  let(:card_obj) { CityPayApiClient::Card.new(card_id: 'C1') }
  let(:acct_time) { Time.utc(2022,1,1,0,0,0) }
  let(:cha_data) do
    {
      account_id: 'ACCT1',
      cards: [card_obj],
      contact: contact,
      date_created: acct_time,
      default_card_id: 'C1',
      default_card_index: 0,
      last_modified: acct_time + 60,
      status: 'ACTIVE',
      unique_id: 'UID1'
    }
  end
  let(:cha_instance) { described_class.new(cha_data) }

  it 'builds with all attributes' do
    expect(cha_instance.account_id).to eq('ACCT1')
    expect(cha_instance.cards).to eq([card_obj])
    expect(cha_instance.contact).to eq(contact)
    expect(cha_instance.last_modified).to eq(acct_time + 60)
  end

  it 'updates and reads attributes correctly' do
    new_contact = CityPayApiClient::ContactDetails.new(firstname: 'Ann')
    new_card = CityPayApiClient::Card.new(card_id: 'C2')
    cha_instance.account_id = 'ACCT2'
    cha_instance.cards = [new_card]
    cha_instance.contact = new_contact
    cha_instance.date_created = acct_time + 120
    cha_instance.default_card_id = 'C2'
    cha_instance.default_card_index = 1
    cha_instance.last_modified = acct_time + 180
    cha_instance.status = 'INACTIVE'
    cha_instance.unique_id = 'UID2'
    expect(cha_instance.account_id).to eq('ACCT2')
    expect(cha_instance.cards).to eq([new_card])
    expect(cha_instance.contact).to eq(new_contact)
    expect(cha_instance.date_created).to eq(acct_time + 120)
    expect(cha_instance.default_card_id).to eq('C2')
    expect(cha_instance.default_card_index).to eq(1)
    expect(cha_instance.last_modified).to eq(acct_time + 180)
    expect(cha_instance.status).to eq('INACTIVE')
    expect(cha_instance.unique_id).to eq('UID2')
  end

  it 'serializes to JSON and back' do
    json = cha_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(cha_instance)
  end
end
