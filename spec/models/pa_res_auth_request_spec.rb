require 'json'
require 'citypay_api_client/models/pa_res_auth_request'

RSpec.describe CityPayApiClient::PaResAuthRequest do
  let(:fake_data) { { md: 'md_test', pares: 'pares_test' } }
  let(:model) { described_class.new(fake_data) }

  it 'initializes fields correctly' do
    expect(model.md).to eq('md_test')
    expect(model.pares).to eq('pares_test')
  end

  it 'supports setters and getters' do
    model.md = 'new_md'
    model.pares = 'new_pares'
    expect(model.md).to eq('new_md')
    expect(model.pares).to eq('new_pares')
  end

  it 'round trips JSON properly' do
    json = model.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(model)
  end
end
