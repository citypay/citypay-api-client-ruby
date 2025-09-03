require 'json'
require 'date'
require 'time'
require 'citypay_api_client/models/auth_request'
require 'citypay_api_client/models/airline_advice'
require 'citypay_api_client/models/contact_details'
require 'citypay_api_client/models/event_data_model'
require 'citypay_api_client/models/external_mpi'
require 'citypay_api_client/models/mcc6012'
require 'citypay_api_client/models/three_d_secure'

RSpec.describe CityPayApiClient::AuthRequest do
  let(:fake_airline) { CityPayApiClient::AirlineAdvice.new(
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
  let(:fake_contact) { CityPayApiClient::ContactDetails.new(firstname: 'Jane') }
  let(:fake_event) do
    CityPayApiClient::EventDataModel.new(
      event_end_date: Date.new(2022,1,2),
      event_id: 'EV1',
      event_organiser_id: 'ORG',
      event_start_date: Date.new(2022,1,1),
      payment_type: 'CARD'
    )
  end
  let(:fake_external) { CityPayApiClient::ExternalMPI.new(authen_result: 'A', cavv: 'cavv', eci: 1, enrolled: 'Y', xid: 'xid') }
  let(:fake_mcc) { CityPayApiClient::MCC6012.new(recipient_account: 'ACC', recipient_dob: '1990-01-01', recipient_lastname: 'Smith', recipient_postcode: 'AB1') }
  let(:fake_three_ds) do
    CityPayApiClient::ThreeDSecure.new(
      accept_headers: 'text/html',
      browser_color_depth: '24',
      browser_ip: '127.0.0.1',
      browser_java_enabled: 'true',
      browser_language: 'en',
      browser_screen_height: '800',
      browser_screen_width: '600',
      browser_tz: '+0',
      cp_bx: 'box',
      downgrade1: true,
      merchant_termurl: 'http://example.com',
      tds_policy: '2',
      user_agent: 'RSpec'
    )
  end
  let(:fake_data) do
    {
      airline_data: fake_airline,
      amount: 1000,
      avs_postcode_policy: '1',
      bill_to: fake_contact,
      cardnumber: '4111111111111111',
      csc: '123',
      csc_policy: '1',
      currency: 'GBP',
      duplicate_policy: '1',
      event_management: fake_event,
      expmonth: 12,
      expyear: 2099,
      external_mpi: fake_external,
      identifier: 'ID1234',
      match_avsa: '1',
      mcc6012: fake_mcc,
      merchantid: 1,
      name_on_card: 'J DOE',
      ship_to: fake_contact,
      tag: ['t1'],
      threedsecure: fake_three_ds,
      trans_info: 'info',
      trans_type: 'E'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'initializes all attributes' do
    expect(model_instance.amount).to eq(1000)
    expect(model_instance.cardnumber).to eq('4111111111111111')
    expect(model_instance.threedsecure).to eq(fake_three_ds)
  end

  it 'sets and gets each field' do
    model_instance.airline_data = fake_airline
    model_instance.amount = 2000
    model_instance.avs_postcode_policy = '2'
    model_instance.bill_to = fake_contact
    model_instance.cardnumber = '4000000000000002'
    model_instance.csc = '999'
    model_instance.csc_policy = '2'
    model_instance.currency = 'USD'
    model_instance.duplicate_policy = '2'
    model_instance.event_management = fake_event
    model_instance.expmonth = 11
    model_instance.expyear = 2100
    model_instance.external_mpi = fake_external
    model_instance.identifier = 'ID5678'
    model_instance.match_avsa = '2'
    model_instance.mcc6012 = fake_mcc
    model_instance.merchantid = 2
    model_instance.name_on_card = 'A TEST'
    model_instance.ship_to = fake_contact
    model_instance.tag = ['t2']
    model_instance.threedsecure = fake_three_ds
    model_instance.trans_info = 'info2'
    model_instance.trans_type = 'S'
    expect(model_instance.airline_data).to eq(fake_airline)
    expect(model_instance.amount).to eq(2000)
    expect(model_instance.avs_postcode_policy).to eq('2')
    expect(model_instance.bill_to).to eq(fake_contact)
    expect(model_instance.cardnumber).to eq('4000000000000002')
    expect(model_instance.csc).to eq('999')
    expect(model_instance.csc_policy).to eq('2')
    expect(model_instance.currency).to eq('USD')
    expect(model_instance.duplicate_policy).to eq('2')
    expect(model_instance.event_management).to eq(fake_event)
    expect(model_instance.expmonth).to eq(11)
    expect(model_instance.expyear).to eq(2100)
    expect(model_instance.external_mpi).to eq(fake_external)
    expect(model_instance.identifier).to eq('ID5678')
    expect(model_instance.match_avsa).to eq('2')
    expect(model_instance.mcc6012).to eq(fake_mcc)
    expect(model_instance.merchantid).to eq(2)
    expect(model_instance.name_on_card).to eq('A TEST')
    expect(model_instance.ship_to).to eq(fake_contact)
    expect(model_instance.tag).to eq(['t2'])
    expect(model_instance.threedsecure).to eq(fake_three_ds)
    expect(model_instance.trans_info).to eq('info2')
    expect(model_instance.trans_type).to eq('S')
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

