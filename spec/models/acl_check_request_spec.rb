require 'json'
require 'citypay_api_client/models/acl_check_request'

RSpec.describe CityPayApiClient::AclCheckRequest do
  let(:fake_data) { { ip: '192.0.2.1' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'creates the object with ip' do
    expect(model_instance.ip).to eq('192.0.2.1')
  end

  it 'updates ip attribute' do
    model_instance.ip = '198.51.100.1'
    expect(model_instance.ip).to eq('198.51.100.1')
  end

  it 'serializes and deserializes using JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
