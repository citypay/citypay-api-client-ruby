require 'json'
require 'time'
require 'citypay_api_client/models/domain_key_response'

RSpec.describe CityPayApiClient::DomainKeyResponse do
  let(:fake_time) { Time.utc(2021, 1, 1, 12, 0, 0) }
  let(:fake_data) do
    {
      date_created: fake_time,
      domain: ['example.com'],
      domain_key: '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF',
      live: false,
      merchantid: 1
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.domain_key).to eq('0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF')
    expect(model_instance.domain).to eq(['example.com'])
  end

  it 'allows setters and getters' do
    new_time = Time.utc(2022, 2, 2, 12, 0, 0)
    model_instance.date_created = new_time
    model_instance.domain = ['test.com']
    model_instance.domain_key = 'FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210'
    model_instance.live = true
    model_instance.merchantid = 2
    expect(model_instance.date_created).to eq(new_time)
    expect(model_instance.domain).to eq(['test.com'])
    expect(model_instance.domain_key).to eq('FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210')
    expect(model_instance.live).to eq(true)
    expect(model_instance.merchantid).to eq(2)
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
