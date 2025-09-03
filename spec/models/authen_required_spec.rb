require 'json'
require 'citypay_api_client/models/authen_required'

RSpec.describe CityPayApiClient::AuthenRequired do
  let(:fake_data) { { acs_url: 'http://example.com', md: 'mdtoken', pareq: 'pareqdata' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'builds with provided attributes' do
    expect(model_instance.acs_url).to eq('http://example.com')
    expect(model_instance.md).to eq('mdtoken')
    expect(model_instance.pareq).to eq('pareqdata')
  end

  it 'mutates all fields correctly' do
    model_instance.acs_url = 'http://new.url'
    model_instance.md = 'newmd'
    model_instance.pareq = 'newpareq'
    expect(model_instance.acs_url).to eq('http://new.url')
    expect(model_instance.md).to eq('newmd')
    expect(model_instance.pareq).to eq('newpareq')
  end

  it 'converts to and from JSON properly' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

