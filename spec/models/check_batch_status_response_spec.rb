require 'json'
require 'citypay_api_client/models/check_batch_status_response'
require 'citypay_api_client/models/batch'

RSpec.describe CityPayApiClient::CheckBatchStatusResponse do
  let(:fake_batch) { CityPayApiClient::Batch.new(batch_date: Date.new(2021, 01, 01), batch_id: 1, batch_status: 'A') }
  let(:fake_data) { { batches: [fake_batch] } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.batches).to eq([fake_batch])
  end

  it 'allows setters and getters' do
    new_batch = CityPayApiClient::Batch.new(batch_date: '2021-02-02', batch_id: 2, batch_status: 'B')
    model_instance.batches = [new_batch]
    expect(model_instance.batches).to eq([new_batch])
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
