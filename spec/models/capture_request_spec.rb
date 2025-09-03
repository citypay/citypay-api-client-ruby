require 'json'
require 'time'
require 'citypay_api_client/models/capture_request'
require 'citypay_api_client/models/airline_advice'
require 'citypay_api_client/models/event_data_model'

RSpec.describe CityPayApiClient::CaptureRequest do
  let(:air_data) { CityPayApiClient::AirlineAdvice.new(
    carrier_name: 'TestAir',
    conjunction_ticket_indicator: true,
    eticket_indicator: true,
    no_air_segments: 2,
    number_in_party: 1,
    original_ticket_no: '12345678901234',
    passenger_name: 'John Passenger',
    ticket_issue_city: 'London',
    ticket_issue_date: Date.new(2021,6,1),
    ticket_issue_name: 'Agent',
    ticket_no: '99999999999999',
    transaction_type: 'TKT'
  ) }
  let(:event_data) { CityPayApiClient::EventDataModel.new(event_id: 'EV1') }
  let(:cap_data) do
    {
      airline_data: air_data,
      amount: 1500,
      event_management: event_data,
      identifier: 'ID123',
      merchantid: 999,
      transno: 888
    }
  end
  let(:cap_instance) { described_class.new(cap_data) }

  it 'constructs with all fields' do
    expect(cap_instance.airline_data).to eq(air_data)
    expect(cap_instance.amount).to eq(1500)
    expect(cap_instance.event_management).to eq(event_data)
    expect(cap_instance.identifier).to eq('ID123')
    expect(cap_instance.merchantid).to eq(999)
    expect(cap_instance.transno).to eq(888)
  end

  it 'updates fields correctly' do
    new_air = CityPayApiClient::AirlineAdvice.new(
      carrier_name: 'TestAir',
      conjunction_ticket_indicator: true,
      eticket_indicator: true,
      no_air_segments: 2,
      number_in_party: 1,
      original_ticket_no: '12345678901234',
      passenger_name: 'John Passenger',
      ticket_issue_city: 'London',
      ticket_issue_date: Date.new(2021,6,1),
      ticket_issue_name: 'Agent',
      ticket_no: '99999999999999',
      transaction_type: 'TKT'
    )
    new_event = CityPayApiClient::EventDataModel.new(event_id: 'EV2')
    cap_instance.airline_data = new_air
    cap_instance.amount = 2000
    cap_instance.event_management = new_event
    cap_instance.identifier = 'ID456'
    cap_instance.merchantid = 1000
    cap_instance.transno = 889
    expect(cap_instance.airline_data).to eq(new_air)
    expect(cap_instance.amount).to eq(2000)
    expect(cap_instance.event_management).to eq(new_event)
    expect(cap_instance.identifier).to eq('ID456')
    expect(cap_instance.merchantid).to eq(1000)
    expect(cap_instance.transno).to eq(889)
  end

  it 'serializes and deserializes through JSON' do
    json = cap_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(cap_instance)
  end
end
