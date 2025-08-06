require 'json'
require 'citypay_api_client/models/domain_key_check_request'

RSpec.describe CityPayApiClient::DomainKeyCheckRequest do
  let(:fake_data) { { domain_key: 'FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.domain_key).to eq('FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210')
  end

  it 'allows setters and getters' do
    model_instance.domain_key = '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF'
    expect(model_instance.domain_key).to eq('0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF')
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
