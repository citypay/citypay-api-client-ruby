require 'json'
require 'citypay_api_client/models/paylink_error_code'

RSpec.describe CityPayApiClient::PaylinkErrorCode do
  let(:fake_data) { { code: "1", msg: 'problem' } }
  let(:model) { described_class.new(fake_data) }

  it 'initializes fields' do
    expect(model.code).to eq("1")
    expect(model.msg).to eq('problem')
  end

  it 'updates getters via setters' do
    model.code = "2"
    model.msg = 'error'
    expect(model.code).to eq("2")
    expect(model.msg).to eq('error')
  end

  it 'serializes correctly' do
    json = model.to_hash.to_json
    obj = described_class.build_from_hash(JSON.parse(json))
    expect(obj).to eq(model)
  end
end
