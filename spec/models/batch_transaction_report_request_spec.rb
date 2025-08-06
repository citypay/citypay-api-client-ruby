require 'json'
require 'citypay_api_client/models/batch_transaction_report_request'

RSpec.describe CityPayApiClient::BatchTransactionReportRequest do
  let(:fake_data) { { max_results: 10, next_token: 'abc', order_by: 'datetime' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'initializes correctly' do
    expect(model_instance.max_results).to eq(10)
    expect(model_instance.next_token).to eq('abc')
    expect(model_instance.order_by).to eq('datetime')
  end

  it 'updates and reads each attribute' do
    model_instance.max_results = 20
    model_instance.next_token = 'def'
    model_instance.order_by = 'amount'
    expect(model_instance.max_results).to eq(20)
    expect(model_instance.next_token).to eq('def')
    expect(model_instance.order_by).to eq('amount')
  end

  it 'generates the correct hash representation' do
    expected_hash = {
      'maxResults' => 10,
      'nextToken' => 'abc',
      'orderBy' => 'datetime'
    }
    expect(model_instance.to_hash).to eq(expected_hash)
  end

  it 'serializes to JSON and back' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

