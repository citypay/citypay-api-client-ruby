require 'json'
require 'citypay_api_client/models/card_status'

RSpec.describe CityPayApiClient::CardStatus do
  let(:status_data) { { card_status: 'ACTIVE', default: true } }
  let(:status_instance) { described_class.new(status_data) }

  it 'creates the object correctly' do
    expect(status_instance.card_status).to eq('ACTIVE')
    expect(status_instance.default).to eq(true)
  end

  it 'updates fields using setters' do
    status_instance.card_status = 'INACTIVE'
    status_instance.default = false
    expect(status_instance.card_status).to eq('INACTIVE')
    expect(status_instance.default).to eq(false)
  end

  it 'serializes to JSON and reconstructs the object' do
    json = status_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(status_instance)
  end
end
