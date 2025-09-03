require 'json'
require 'date'
require 'citypay_api_client/models/batch'

RSpec.describe CityPayApiClient::Batch do
  let(:fake_data) { { batch_date: Date.new(2022,2,2), batch_id: 1, batch_status: 'Open' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'initializes with attributes' do
    expect(model_instance.batch_date).to eq(Date.new(2022,2,2))
    expect(model_instance.batch_id).to eq(1)
    expect(model_instance.batch_status).to eq('Open')
  end

  it 'updates every field via setters' do
    model_instance.batch_date = Date.new(2022,3,3)
    model_instance.batch_id = 2
    model_instance.batch_status = 'Closed'
    expect(model_instance.batch_date).to eq(Date.new(2022,3,3))
    expect(model_instance.batch_id).to eq(2)
    expect(model_instance.batch_status).to eq('Closed')
  end

  it 'round trips JSON correctly' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

