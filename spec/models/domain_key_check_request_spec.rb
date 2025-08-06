require 'json'
require 'citypay_api_client/models/domain_key_check_request'

RSpec.describe CityPayApiClient::DomainKeyCheckRequest do
  let(:fake_data) { { domain_key: 'key1' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.domain_key).to eq('key1')
  end

  it 'allows setters and getters' do
    model_instance.domain_key = 'key2'
    expect(model_instance.domain_key).to eq('key2')
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
