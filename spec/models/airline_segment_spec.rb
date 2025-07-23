require 'json'
require 'date'
require 'citypay_api_client/models/airline_segment'

RSpec.describe CityPayApiClient::AirlineSegment do
  let(:fake_data) do
    {
      arrival_location_code: 'LAX',
      carrier_code: 'AA',
      class_service_code: 'E',
      departure_date: Date.new(2021,7,1),
      departure_location_code: 'SFO',
      flight_number: 'AA100',
      segment_fare: 20000,
      stop_over_indicator: 'O'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'creates with provided data' do
    expect(model_instance.flight_number).to eq('AA100')
  end

  it 'updates attributes' do
    model_instance.arrival_location_code = 'JFK'
    model_instance.carrier_code = 'BA'
    model_instance.class_service_code = 'B'
    model_instance.departure_date = Date.new(2021,7,2)
    model_instance.departure_location_code = 'LHR'
    model_instance.flight_number = 'BA200'
    model_instance.segment_fare = 15000
    model_instance.stop_over_indicator = 'X'
    expect(model_instance.arrival_location_code).to eq('JFK')
    expect(model_instance.carrier_code).to eq('BA')
    expect(model_instance.class_service_code).to eq('B')
    expect(model_instance.departure_date).to eq(Date.new(2021,7,2))
    expect(model_instance.departure_location_code).to eq('LHR')
    expect(model_instance.flight_number).to eq('BA200')
    expect(model_instance.segment_fare).to eq(15000)
    expect(model_instance.stop_over_indicator).to eq('X')
  end

  it 'serializes to JSON and back' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
