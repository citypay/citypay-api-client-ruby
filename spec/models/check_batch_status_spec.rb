require 'json'
require 'citypay_api_client/models/check_batch_status'

RSpec.describe CityPayApiClient::CheckBatchStatus do
  let(:fake_data) { { batch_id: 1, client_account_id: 'ACC1' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.batch_id).to eq(1)
    expect(model_instance.client_account_id).to eq('ACC1')
  end

  it 'allows setters and getters' do
    model_instance.batch_id = 2
    model_instance.client_account_id = 'ACC2'
    expect(model_instance.batch_id).to eq(2)
    expect(model_instance.client_account_id).to eq('ACC2')
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
