require 'json'
require 'citypay_api_client/models/net_summary_response'

RSpec.describe CityPayApiClient::NetSummaryResponse do
  let(:fake_data) do
    {
      credit_items_amount: "1000",
      credit_items_count: 2,
      credit_items_value: 1200,
      debit_items_amount: "2000",
      debit_items_count: 5,
      debit_items_value: 2500,
      net_amount: 1300,
      total_count: 7
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model.credit_items_amount).to eq("1000")
    expect(model.credit_items_count).to eq(2)
    expect(model.credit_items_value).to eq(1200)
    expect(model.debit_items_amount).to eq("2000")
    expect(model.debit_items_count).to eq(5)
    expect(model.debit_items_value).to eq(2500)
    expect(model.net_amount).to eq(1300)
    expect(model.total_count).to eq(7)
  end

  it 'updates attributes correctly' do
    model.credit_items_amount = "1100"
    model.credit_items_count = 3
    model.credit_items_value = 1300
    model.debit_items_amount = "2100"
    model.debit_items_count = 6
    model.debit_items_value = 2600
    model.net_amount = 1400
    model.total_count = 9
    expect(model.credit_items_amount).to eq("1100")
    expect(model.credit_items_count).to eq(3)
    expect(model.credit_items_value).to eq(1300)
    expect(model.debit_items_amount).to eq("2100")
    expect(model.debit_items_count).to eq(6)
    expect(model.debit_items_value).to eq(2600)
    expect(model.net_amount).to eq(1400)
    expect(model.total_count).to eq(9)
  end

  it 'serializes to JSON and back' do
    json = model.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model)
  end
end
