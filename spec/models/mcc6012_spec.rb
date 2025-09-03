require 'json'
require 'citypay_api_client/models/mcc6012'

RSpec.describe CityPayApiClient::MCC6012 do
  let(:fake_data) do
    {
      recipient_account: 'AC123456',
      recipient_dob: '1970-01-01',
      recipient_lastname: 'Smith',
      recipient_postcode: 'AB12CD'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'builds correctly' do
    expect(model.recipient_account).to eq('AC123456')
    expect(model.recipient_dob).to eq('1970-01-01')
    expect(model.recipient_lastname).to eq('Smith')
    expect(model.recipient_postcode).to eq('AB12CD')
  end

  it 'allows modifications' do
    model.recipient_account = 'AC654321'
    model.recipient_dob = '1980-12-31'
    model.recipient_lastname = 'Jones'
    model.recipient_postcode = 'CD34EF'
    expect(model.recipient_account).to eq('AC654321')
    expect(model.recipient_dob).to eq('1980-12-31')
    expect(model.recipient_lastname).to eq('Jones')
    expect(model.recipient_postcode).to eq('CD34EF')
  end

  it 'serializes to JSON and back' do
    json = model.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(model)
  end
end
