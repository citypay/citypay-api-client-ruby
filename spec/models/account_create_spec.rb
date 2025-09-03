require 'json'
require 'citypay_api_client/models/account_create'
require 'citypay_api_client/models/contact_details'

RSpec.describe CityPayApiClient::AccountCreate do
  let(:fake_contact) do
    CityPayApiClient::ContactDetails.new(
      address1: '1 Test St',
      address2: '2 Test St',
      address3: '3 Test St',
      area: 'Testville',
      company: 'ACME',
      country: 'GB',
      email: 'a@example.com',
      firstname: 'A',
      lastname: 'B',
      mobile_no: '12345',
      postcode: 'A1A1',
      telephone_no: '54321',
      title: 'Mx'
    )
  end
  let(:fake_data) { { account_id: 'acc123', contact: fake_contact } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.account_id).to eq('acc123')
    expect(model_instance.contact).to eq(fake_contact)
  end

  it 'allows attribute modification' do
    model_instance.account_id = 'changed'
    expect(model_instance.account_id).to eq('changed')
  end

  it 'sets and gets the contact field' do
    new_contact = CityPayApiClient::ContactDetails.new(firstname: 'Z')
    model_instance.contact = new_contact
    expect(model_instance.contact).to eq(new_contact)
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
