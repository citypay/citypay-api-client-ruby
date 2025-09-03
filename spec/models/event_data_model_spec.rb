require 'json'
require 'date'
require 'citypay_api_client/models/event_data_model'

RSpec.describe CityPayApiClient::EventDataModel do
  let(:fake_data) do
    {
      event_end_date: Date.new(2023, 12, 25),
      event_id: 'EVNT1',
      event_organiser_id: 'ORG1',
      event_start_date: Date.new(2023, 12, 24),
      payment_type: 'deposit'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'constructs with all attributes' do
    expect(model.event_end_date).to eq(Date.new(2023, 12, 25))
    expect(model.event_id).to eq('EVNT1')
    expect(model.event_organiser_id).to eq('ORG1')
    expect(model.event_start_date).to eq(Date.new(2023, 12, 24))
    expect(model.payment_type).to eq('deposit')
  end

  it 'allows attribute updates' do
    model.event_end_date = Date.new(2024, 1, 2)
    model.event_id = 'EVNT2'
    model.event_organiser_id = 'ORG2'
    model.event_start_date = Date.new(2024, 1, 1)
    model.payment_type = 'balance'
    expect(model.event_end_date).to eq(Date.new(2024, 1, 2))
    expect(model.event_id).to eq('EVNT2')
    expect(model.event_organiser_id).to eq('ORG2')
    expect(model.event_start_date).to eq(Date.new(2024, 1, 1))
    expect(model.payment_type).to eq('balance')
  end

  it 'serializes to JSON and back' do
    json = model.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model)
  end
end
