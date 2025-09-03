require 'json'
require 'citypay_api_client/models/register_ip_model'

RSpec.describe CityPayApiClient::RegisterIpModel do
  let(:ip_data) { { exp: 24, ip: '192.0.2.1' } }
  let(:ip_instance) { described_class.new(ip_data) }

  it 'creates with provided attributes' do
    expect(ip_instance.exp).to eq(24)
    expect(ip_instance.ip).to eq('192.0.2.1')
  end

  it 'updates attributes correctly' do
    ip_instance.exp = 48
    ip_instance.ip = '198.51.100.2'
    expect(ip_instance.exp).to eq(48)
    expect(ip_instance.ip).to eq('198.51.100.2')
  end

  it 'round trips JSON' do
    json = ip_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(ip_instance)
  end
end
