require 'json'
require 'citypay_api_client/models/ping'

RSpec.describe CityPayApiClient::Ping do
  let(:ping_data) { { identifier: 'PING1' } }
  let(:ping_instance) { described_class.new(ping_data) }

  it 'initializes with identifier' do
    expect(ping_instance.identifier).to eq('PING1')
  end

  it 'allows identifier update' do
    ping_instance.identifier = 'PING2'
    expect(ping_instance.identifier).to eq('PING2')
  end

  it 'serializes and deserializes correctly' do
    json = ping_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(ping_instance)
  end
end
