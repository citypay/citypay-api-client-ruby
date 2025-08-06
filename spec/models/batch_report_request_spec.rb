require 'json'
require 'citypay_api_client/models/batch_report_request'

RSpec.describe CityPayApiClient::BatchReportRequest do
  let(:fake_data) { { batch_id: 10, client_account_id: 'ACC1' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs the object with attributes' do
    expect(model_instance.batch_id).to eq(10)
    expect(model_instance.client_account_id).to eq('ACC1')
  end

  it 'mutates fields via setters' do
    model_instance.batch_id = 20
    model_instance.client_account_id = 'ACC2'
    expect(model_instance.batch_id).to eq(20)
    expect(model_instance.client_account_id).to eq('ACC2')
  end

  it 'JSON round trips correctly' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

