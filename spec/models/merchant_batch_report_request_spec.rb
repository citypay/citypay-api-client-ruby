require 'json'
require 'date'
require 'citypay_api_client/models/merchant_batch_report_request'

RSpec.describe CityPayApiClient::MerchantBatchReportRequest do
  let(:fake_data) do
    {
      date_from: Date.new(2023, 1, 1),
      date_until: Date.new(2023, 1, 31),
      max_results: 10,
      merchant_id: [1001, 1002],
      next_token: 'tok123',
      order_by: 'merchant_id'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes correctly' do
    expect(model.date_from).to eq(Date.new(2023, 1, 1))
    expect(model.date_until).to eq(Date.new(2023, 1, 31))
    expect(model.max_results).to eq(10)
    expect(model.merchant_id).to eq([1001, 1002])
    expect(model.next_token).to eq('tok123')
    expect(model.order_by).to eq('merchant_id')
  end

  it 'updates each field' do
    model.date_from = Date.new(2024, 2, 1)
    model.date_until = Date.new(2024, 2, 28)
    model.max_results = 20
    model.merchant_id = [2001]
    model.next_token = 'tok456'
    model.order_by = 'batch_no DESC'
    expect(model.date_from).to eq(Date.new(2024, 2, 1))
    expect(model.date_until).to eq(Date.new(2024, 2, 28))
    expect(model.max_results).to eq(20)
    expect(model.merchant_id).to eq([2001])
    expect(model.next_token).to eq('tok456')
    expect(model.order_by).to eq('batch_no DESC')
  end

  it 'serializes and deserializes properly' do
    json = model.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(model)
  end
end
