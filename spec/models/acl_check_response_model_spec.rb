require 'json'
require 'citypay_api_client/models/acl_check_response_model'

RSpec.describe CityPayApiClient::AclCheckResponseModel do
  let(:fake_data) do
    {
      acl: 'acl1',
      cache: true,
      ip: '203.0.113.5',
      provider: 'subnet'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'initializes correctly' do
    expect(model_instance.acl).to eq('acl1')
    expect(model_instance.cache).to eq(true)
    expect(model_instance.ip).to eq('203.0.113.5')
    expect(model_instance.provider).to eq('subnet')
  end

  it 'modifies attributes' do
    model_instance.provider = 'cloud'
    expect(model_instance.provider).to eq('cloud')
    model_instance.acl = 'acl2'
    model_instance.cache = false
    model_instance.ip = '198.51.100.5'
    expect(model_instance.acl).to eq('acl2')
    expect(model_instance.cache).to eq(false)
    expect(model_instance.ip).to eq('198.51.100.5')
  end

  it 'round trips via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
