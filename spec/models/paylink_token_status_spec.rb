require 'json'
require 'citypay_api_client/models/paylink_token_status'
require 'citypay_api_client/models/paylink_state_event'

RSpec.describe CityPayApiClient::PaylinkTokenStatus do
  let(:event) { CityPayApiClient::PaylinkStateEvent.new(datetime: Time.utc(2020,1,4), message: 'm', state: 's') }
  let(:fake_data) do
    {
      amount_paid: 50,
      auth_code: 'AC',
      card: '4111',
      created: Time.utc(2020,1,1),
      datetime: Time.utc(2020,1,2),
      identifier: 'abcd',
      is_attachment: true,
      is_cancelled: false,
      is_closed: true,
      is_customer_receipt_email_sent: false,
      is_email_sent: true,
      is_expired: false,
      is_form_viewed: true,
      is_merchant_notification_email_sent: false,
      is_open_for_payment: true,
      is_paid: false,
      is_payment_attempted: true,
      is_postback_ok: true,
      is_request_challenged: false,
      is_sms_sent: true,
      is_validated: false,
      last_event_date_time: Time.utc(2020,1,3),
      last_payment_result: 'OK',
      mid: 123,
      payment_attempts_count: 2,
      state_history: [event],
      token: 'tk',
      trans_no: 999
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes attributes correctly' do
    expect(model.amount_paid).to eq(50)
    expect(model.auth_code).to eq('AC')
    expect(model.card).to eq('4111')
    expect(model.created).to eq(Time.utc(2020,1,1))
    expect(model.datetime).to eq(Time.utc(2020,1,2))
    expect(model.identifier).to eq('abcd')
    expect(model.is_attachment).to eq(true)
    expect(model.is_cancelled).to eq(false)
    expect(model.is_closed).to eq(true)
    expect(model.is_customer_receipt_email_sent).to eq(false)
    expect(model.is_email_sent).to eq(true)
    expect(model.is_expired).to eq(false)
    expect(model.is_form_viewed).to eq(true)
    expect(model.is_merchant_notification_email_sent).to eq(false)
    expect(model.is_open_for_payment).to eq(true)
    expect(model.is_paid).to eq(false)
    expect(model.is_payment_attempted).to eq(true)
    expect(model.is_postback_ok).to eq(true)
    expect(model.is_request_challenged).to eq(false)
    expect(model.is_sms_sent).to eq(true)
    expect(model.is_validated).to eq(false)
    expect(model.last_event_date_time).to eq(Time.utc(2020,1,3))
    expect(model.last_payment_result).to eq('OK')
    expect(model.mid).to eq(123)
    expect(model.payment_attempts_count).to eq(2)
    expect(model.state_history).to eq([event])
    expect(model.token).to eq('tk')
    expect(model.trans_no).to eq(999)
  end

  it 'updates each attribute' do
    new_event = CityPayApiClient::PaylinkStateEvent.new(datetime: Time.utc(2021,2,1), message: 'n', state: 'd')
    model.amount_paid = 60
    model.auth_code = 'BC'
    model.card = '4222'
    model.created = Time.utc(2020,5,1)
    model.datetime = Time.utc(2020,5,2)
    model.identifier = 'wxyz'
    model.is_attachment = false
    model.is_cancelled = true
    model.is_closed = false
    model.is_customer_receipt_email_sent = true
    model.is_email_sent = false
    model.is_expired = true
    model.is_form_viewed = false
    model.is_merchant_notification_email_sent = true
    model.is_open_for_payment = false
    model.is_paid = true
    model.is_payment_attempted = false
    model.is_postback_ok = false
    model.is_request_challenged = true
    model.is_sms_sent = false
    model.is_validated = true
    model.last_event_date_time = Time.utc(2020,5,3)
    model.last_payment_result = 'FAIL'
    model.mid = 321
    model.payment_attempts_count = 3
    model.state_history = [new_event]
    model.token = 'tk2'
    model.trans_no = 1000

    expect(model.amount_paid).to eq(60)
    expect(model.auth_code).to eq('BC')
    expect(model.card).to eq('4222')
    expect(model.created).to eq(Time.utc(2020,5,1))
    expect(model.datetime).to eq(Time.utc(2020,5,2))
    expect(model.identifier).to eq('wxyz')
    expect(model.is_attachment).to eq(false)
    expect(model.is_cancelled).to eq(true)
    expect(model.is_closed).to eq(false)
    expect(model.is_customer_receipt_email_sent).to eq(true)
    expect(model.is_email_sent).to eq(false)
    expect(model.is_expired).to eq(true)
    expect(model.is_form_viewed).to eq(false)
    expect(model.is_merchant_notification_email_sent).to eq(true)
    expect(model.is_open_for_payment).to eq(false)
    expect(model.is_paid).to eq(true)
    expect(model.is_payment_attempted).to eq(false)
    expect(model.is_postback_ok).to eq(false)
    expect(model.is_request_challenged).to eq(true)
    expect(model.is_sms_sent).to eq(false)
    expect(model.is_validated).to eq(true)
    expect(model.last_event_date_time).to eq(Time.utc(2020,5,3))
    expect(model.last_payment_result).to eq('FAIL')
    expect(model.mid).to eq(321)
    expect(model.payment_attempts_count).to eq(3)
    expect(model.state_history).to eq([new_event])
    expect(model.token).to eq('tk2')
    expect(model.trans_no).to eq(1000)
  end

  it 'round trips through JSON' do
    json = model.to_hash.to_json
    same = described_class.build_from_hash(JSON.parse(json))
    expect(same).to eq(model)
  end
end
