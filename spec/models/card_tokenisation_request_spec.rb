require 'json'
require 'citypay_api_client/models/card_tokenisation_request'

RSpec.describe CityPayApiClient::CardTokenisationRequest do
  let(:token_data) do
    {
      cardnumber: '4111111111111111',
      csc: '123',
      expmonth: 12,
      expyear: 2028,
      name_on_card: 'Jane Doe',
      uuid: '123e4567-e89b-12d3-a456-426614174000'
    }
  end
  let(:token_instance) { described_class.new(token_data) }

  it 'builds with supplied values' do
    expect(token_instance.cardnumber).to eq('4111111111111111')
    expect(token_instance.csc).to eq('123')
    expect(token_instance.expmonth).to eq(12)
    expect(token_instance.expyear).to eq(2028)
    expect(token_instance.name_on_card).to eq('Jane Doe')
    expect(token_instance.uuid).to eq('123e4567-e89b-12d3-a456-426614174000')
  end

  it 'allows attribute updates' do
    token_instance.cardnumber = '5222222222222222'
    token_instance.csc = '456'
    token_instance.expmonth = 1
    token_instance.expyear = 2030
    token_instance.name_on_card = 'John Smith'
    token_instance.uuid = '00000000-0000-4000-8000-000000000000'

    expect(token_instance.cardnumber).to eq('5222222222222222')
    expect(token_instance.csc).to eq('456')
    expect(token_instance.expmonth).to eq(1)
    expect(token_instance.expyear).to eq(2030)
    expect(token_instance.name_on_card).to eq('John Smith')
    expect(token_instance.uuid).to eq('00000000-0000-4000-8000-000000000000')
  end

  it 'serializes and deserializes as JSON' do
    json = token_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(token_instance)
  end
end
