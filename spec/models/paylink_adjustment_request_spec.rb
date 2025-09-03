require 'json'
require 'citypay_api_client/models/paylink_adjustment_request'

RSpec.describe CityPayApiClient::PaylinkAdjustmentRequest do
  let(:fake_data) { { amount: 1234, identifier: 'ID100', reason: 'Manual' } }
  let(:model) { described_class.new(fake_data) }

  it 'initializes with provided attributes' do
    expect(model.amount).to eq(1234)
    expect(model.identifier).to eq('ID100')
    expect(model.reason).to eq('Manual')
  end

  it 'updates fields via setters' do
    model.amount = 2000
    model.identifier = 'ID200'
    model.reason = 'Update'
    expect(model.amount).to eq(2000)
    expect(model.identifier).to eq('ID200')
    expect(model.reason).to eq('Update')
  end

  it 'round trips through JSON' do
    json = model.to_hash.to_json
    recreated = described_class.build_from_hash(JSON.parse(json))
    expect(recreated).to eq(model)
  end
end
