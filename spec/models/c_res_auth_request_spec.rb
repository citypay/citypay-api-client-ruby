require 'json'
require 'citypay_api_client/models/c_res_auth_request'

RSpec.describe CityPayApiClient::CResAuthRequest do
  let(:cres_data) { { cres: 'CRES123' } }
  let(:cres_instance) { described_class.new(cres_data) }

  it 'initializes with the cres attribute' do
    expect(cres_instance.cres).to eq('CRES123')
  end

  it 'sets and gets cres' do
    cres_instance.cres = 'CRES456'
    expect(cres_instance.cres).to eq('CRES456')
  end

  it 'round-trips via JSON' do
    json = cres_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(cres_instance)
  end
end
