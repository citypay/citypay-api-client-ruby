require 'json'
require 'date'
require 'citypay_api_client/models/airline_advice'
require 'citypay_api_client/models/airline_segment'

RSpec.describe CityPayApiClient::AirlineAdvice do
  let(:seg1) do
    CityPayApiClient::AirlineSegment.new(
      arrival_location_code: 'LAX',
      carrier_code: 'AA',
      class_service_code: 'E',
      departure_date: Date.new(2021,7,1),
      departure_location_code: 'SFO',
      flight_number: 'AA100',
      segment_fare: 20000,
      stop_over_indicator: 'O'
    )
  end
  let(:seg2) do
    CityPayApiClient::AirlineSegment.new(
      arrival_location_code: 'JFK',
      carrier_code: 'BA',
      class_service_code: 'B',
      departure_date: Date.new(2021,7,2),
      departure_location_code: 'LHR',
      flight_number: 'BA200',
      segment_fare: 15000,
      stop_over_indicator: 'X'
    )
  end
  let(:fake_data) do
    {
      carrier_name: 'TestAir',
      conjunction_ticket_indicator: true,
      eticket_indicator: true,
      no_air_segments: 2,
      number_in_party: 1,
      original_ticket_no: '12345678901234',
      passenger_name: 'John Passenger',
      segment1: seg1,
      segment2: seg2,
      segment3: seg1,
      segment4: seg2,
      ticket_issue_city: 'London',
      ticket_issue_date: Date.new(2021,6,1),
      ticket_issue_name: 'Agent',
      ticket_no: '99999999999999',
      transaction_type: 'TKT'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs all attributes' do
    expect(model_instance.carrier_name).to eq('TestAir')
    expect(model_instance.segment1).to eq(seg1)
  end

  it 'updates values' do
    model_instance.ticket_no = '00000000000001'
    expect(model_instance.ticket_no).to eq('00000000000001')
  end

  it 'sets and gets each field' do
    model_instance.carrier_name = 'NewAir'
    model_instance.conjunction_ticket_indicator = false
    model_instance.eticket_indicator = false
    model_instance.no_air_segments = 3
    model_instance.number_in_party = 2
    model_instance.original_ticket_no = '00000000000000'
    model_instance.passenger_name = 'Jane Passenger'
    model_instance.segment1 = seg2
    model_instance.segment2 = seg1
    model_instance.segment3 = seg2
    model_instance.segment4 = seg1
    model_instance.ticket_issue_city = 'Paris'
    model_instance.ticket_issue_date = Date.new(2021,7,1)
    model_instance.ticket_issue_name = 'NewAgent'
    model_instance.ticket_no = '88888888888888'
    model_instance.transaction_type = 'MCO'
    expect(model_instance.carrier_name).to eq('NewAir')
    expect(model_instance.conjunction_ticket_indicator).to eq(false)
    expect(model_instance.eticket_indicator).to eq(false)
    expect(model_instance.no_air_segments).to eq(3)
    expect(model_instance.number_in_party).to eq(2)
    expect(model_instance.original_ticket_no).to eq('00000000000000')
    expect(model_instance.passenger_name).to eq('Jane Passenger')
    expect(model_instance.segment1).to eq(seg2)
    expect(model_instance.segment2).to eq(seg1)
    expect(model_instance.segment3).to eq(seg2)
    expect(model_instance.segment4).to eq(seg1)
    expect(model_instance.ticket_issue_city).to eq('Paris')
    expect(model_instance.ticket_issue_date).to eq(Date.new(2021,7,1))
    expect(model_instance.ticket_issue_name).to eq('NewAgent')
    expect(model_instance.ticket_no).to eq('88888888888888')
    expect(model_instance.transaction_type).to eq('MCO')
  end

  it 'serializes and builds from JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
