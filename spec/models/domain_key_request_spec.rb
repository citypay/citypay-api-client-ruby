require 'json'
require 'citypay_api_client/models/domain_key_request'

RSpec.describe CityPayApiClient::DomainKeyRequest do
  let(:fake_data) { { domain: ['example.com'], live: true, merchantid: 1 } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.domain).to eq(['example.com'])
    expect(model_instance.live).to eq(true)
    expect(model_instance.merchantid).to eq(1)
  end

  it 'allows setters and getters' do
    model_instance.domain = ['test.com']
    model_instance.live = false
    model_instance.merchantid = 2
    expect(model_instance.domain).to eq(['test.com'])
    expect(model_instance.live).to eq(false)
    expect(model_instance.merchantid).to eq(2)
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
