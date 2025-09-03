require 'json'
require 'date'
require 'citypay_api_client/models/adjustment_condition'

RSpec.describe CityPayApiClient::AdjustmentCondition do
  let(:condition_data) do
    {
      anchor: 'after_creation',
      discount_code: 'DISC10',
      duration: 5,
      end_date: Date.new(2024, 1, 31),
      start_date: Date.new(2024, 1, 1)
    }
  end
  let(:condition_instance) { described_class.new(condition_data) }

  it 'initializes with provided attributes' do
    expect(condition_instance.anchor).to eq('after_creation')
    expect(condition_instance.discount_code).to eq('DISC10')
    expect(condition_instance.duration).to eq(5)
    expect(condition_instance.end_date).to eq(Date.new(2024, 1, 31))
    expect(condition_instance.start_date).to eq(Date.new(2024, 1, 1))
  end

  it 'updates fields correctly' do
    condition_instance.anchor = 'on_due_date'
    condition_instance.discount_code = 'NEWCODE'
    condition_instance.duration = 10
    condition_instance.end_date = Date.new(2024, 2, 1)
    condition_instance.start_date = Date.new(2024, 1, 15)

    expect(condition_instance.anchor).to eq('on_due_date')
    expect(condition_instance.discount_code).to eq('NEWCODE')
    expect(condition_instance.duration).to eq(10)
    expect(condition_instance.end_date).to eq(Date.new(2024, 2, 1))
    expect(condition_instance.start_date).to eq(Date.new(2024, 1, 15))
  end

  it 'serializes and deserializes properly' do
    json = condition_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(condition_instance)
  end
end
