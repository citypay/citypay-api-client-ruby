require 'json'
require 'date'
require 'citypay_api_client/models/adjustments'
require 'citypay_api_client/models/adjustment_condition'

RSpec.describe CityPayApiClient::Adjustments do
  let(:sample_condition) do
    CityPayApiClient::AdjustmentCondition.new(
      anchor: 'after_creation',
      discount_code: 'DISC10',
      duration: 5
    )
  end
  let(:adjustment_data) do
    {
      accumulate: 'AccumulatePrevious',
      adjustment: 'surcharge',
      amount: 100,
      conditions: sample_condition,
      description: 'Processing fee',
      percentage: 5.5
    }
  end
  let(:adjustment_instance) { described_class.new(adjustment_data) }

  it 'constructs with given attributes' do
    expect(adjustment_instance.accumulate).to eq('AccumulatePrevious')
    expect(adjustment_instance.adjustment).to eq('surcharge')
    expect(adjustment_instance.amount).to eq(100)
    expect(adjustment_instance.conditions).to eq(sample_condition)
    expect(adjustment_instance.description).to eq('Processing fee')
    expect(adjustment_instance.percentage).to eq(5.5)
  end

  it 'allows attribute modifications' do
    adjustment_instance.accumulate = 'None'
    adjustment_instance.adjustment = 'discount'
    adjustment_instance.amount = 50
    new_condition = CityPayApiClient::AdjustmentCondition.new(anchor: 'on_due_date')
    adjustment_instance.conditions = new_condition
    adjustment_instance.description = 'Promo'
    adjustment_instance.percentage = 3.0

    expect(adjustment_instance.accumulate).to eq('None')
    expect(adjustment_instance.adjustment).to eq('discount')
    expect(adjustment_instance.amount).to eq(50)
    expect(adjustment_instance.conditions).to eq(new_condition)
    expect(adjustment_instance.description).to eq('Promo')
    expect(adjustment_instance.percentage).to eq(3.0)
  end

  it 'serializes and deserializes via JSON' do
    json = adjustment_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(adjustment_instance)
  end
end
