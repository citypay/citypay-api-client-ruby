require 'json'
require 'citypay_api_client/models/paylink_token_status_change_response'
require 'citypay_api_client/models/paylink_token_status'

RSpec.describe CityPayApiClient::PaylinkTokenStatusChangeResponse do
  let(:token) { CityPayApiClient::PaylinkTokenStatus.new(token: 't1') }
  let(:fake_data) do
    {
      count: 1,
      max_results: 20,
      next_token: 'next',
      tokens: [token]
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'populates all attributes from hash' do
    expect(model.count).to eq(1)
    expect(model.max_results).to eq(20)
    expect(model.next_token).to eq('next')
    expect(model.tokens).to eq([token])
  end

  it 'allows mutation of fields' do
    new_token = CityPayApiClient::PaylinkTokenStatus.new(token: 't2')
    model.count = 2
    model.max_results = 30
    model.next_token = 'after'
    model.tokens = [new_token]
    expect(model.count).to eq(2)
    expect(model.max_results).to eq(30)
    expect(model.next_token).to eq('after')
    expect(model.tokens).to eq([new_token])
  end

  it 'serializes to JSON and restores' do
    json = model.to_hash.to_json
    result = described_class.build_from_hash(JSON.parse(json))
    expect(result).to eq(model)
  end
end
