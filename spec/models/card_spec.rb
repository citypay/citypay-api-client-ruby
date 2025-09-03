require 'json'
require 'time'
require 'citypay_api_client/models/card'

RSpec.describe CityPayApiClient::Card do
  let(:card_time) { Time.utc(2022,1,1,12,0,0) }
  let(:card_data) do
    {
      bin_commercial: true,
      bin_corporate: false,
      bin_country_issued: 'US',
      bin_credit: true,
      bin_currency: 'USD',
      bin_debit: false,
      bin_description: 'Desc',
      bin_eu: false,
      card_id: 'CID1',
      card_status: 'ACTIVE',
      date_created: card_time,
      default: true,
      expmonth: 9,
      expyear: 2030,
      label: 'Primary',
      label2: 'Primary-2030',
      last4digits: '1111',
      name_on_card: 'JOHN DOE',
      scheme: 'VISA',
      token: 'tok123'
    }
  end
  let(:card_instance) { described_class.new(card_data) }

  it 'initializes all attributes properly' do
    expect(card_instance.card_id).to eq('CID1')
    expect(card_instance.name_on_card).to eq('JOHN DOE')
    expect(card_instance.expyear).to eq(2030)
  end

  it 'allows mutation of every field' do
    card_instance.bin_commercial = false
    card_instance.bin_corporate = true
    card_instance.bin_country_issued = 'GB'
    card_instance.bin_credit = false
    card_instance.bin_currency = 'GBP'
    card_instance.bin_debit = true
    card_instance.bin_description = 'New'
    card_instance.bin_eu = true
    card_instance.card_id = 'CID2'
    card_instance.card_status = 'INACTIVE'
    card_instance.date_created = card_time + 60
    card_instance.default = false
    card_instance.expmonth = 10
    card_instance.expyear = 2031
    card_instance.label = 'Alt'
    card_instance.label2 = 'Alt-2031'
    card_instance.last4digits = '2222'
    card_instance.name_on_card = 'JANE DOE'
    card_instance.scheme = 'MC'
    card_instance.token = 'tok456'
    expect(card_instance.bin_commercial).to eq(false)
    expect(card_instance.bin_corporate).to eq(true)
    expect(card_instance.bin_country_issued).to eq('GB')
    expect(card_instance.bin_credit).to eq(false)
    expect(card_instance.bin_currency).to eq('GBP')
    expect(card_instance.bin_debit).to eq(true)
    expect(card_instance.bin_description).to eq('New')
    expect(card_instance.bin_eu).to eq(true)
    expect(card_instance.card_id).to eq('CID2')
    expect(card_instance.card_status).to eq('INACTIVE')
    expect(card_instance.date_created).to eq(card_time + 60)
    expect(card_instance.default).to eq(false)
    expect(card_instance.expmonth).to eq(10)
    expect(card_instance.expyear).to eq(2031)
    expect(card_instance.label).to eq('Alt')
    expect(card_instance.label2).to eq('Alt-2031')
    expect(card_instance.last4digits).to eq('2222')
    expect(card_instance.name_on_card).to eq('JANE DOE')
    expect(card_instance.scheme).to eq('MC')
    expect(card_instance.token).to eq('tok456')
  end

  it 'handles JSON serialization round-trip' do
    json = card_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(card_instance)
  end
end
