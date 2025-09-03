require 'json'
require 'date'
require 'citypay_api_client/models/paylink_bill_payment_token_request'
require 'citypay_api_client/models/paylink_attachment_request'
require 'citypay_api_client/models/paylink_email_notification_path'
require 'citypay_api_client/models/paylink_token_request_model'
require 'citypay_api_client/models/paylink_sms_notification_path'

RSpec.describe CityPayApiClient::PaylinkBillPaymentTokenRequest do
  let(:attachment) do
    CityPayApiClient::PaylinkAttachmentRequest.new(
      data: 'ZGF0YQ==',
      filename: 'invoice.pdf',
      mime_type: 'application/pdf',
      name: 'inv',
      retention: 10
    )
  end

  let(:email_path) { CityPayApiClient::PaylinkEmailNotificationPath.new(to: 'a@example.com') }
  let(:sms_path) { CityPayApiClient::PaylinkSMSNotificationPath.new(to: '0712345678', template: 'tmpl') }
  let(:token_request) { CityPayApiClient::PaylinkTokenRequestModel.new(amount: 1000, currency: 'GBP', identifier: 'IDNT1', merchantid: 1) }

  let(:fake_data) do
    {
      addressee: 'Customer',
      attachments: [attachment],
      descriptor: 'Invoice',
      due: Date.new(2025,1,1),
      email_notification_path: email_path,
      memo: 'Pay please',
      request: token_request,
      sms_notification_path: sms_path
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes with given attributes' do
    expect(model.addressee).to eq('Customer')
    expect(model.attachments).to eq([attachment])
    expect(model.descriptor).to eq('Invoice')
    expect(model.due).to eq(Date.new(2025,1,1))
    expect(model.email_notification_path).to eq(email_path)
    expect(model.memo).to eq('Pay please')
    expect(model.request).to eq(token_request)
    expect(model.sms_notification_path).to eq(sms_path)
  end

  it 'allows updates to all fields' do
    new_attachment = CityPayApiClient::PaylinkAttachmentRequest.new(filename: 'new.txt', mime_type: 'text/plain', name: 'n', data: 'bmV3')
    new_email = CityPayApiClient::PaylinkEmailNotificationPath.new(to: 'b@example.com')
    new_sms = CityPayApiClient::PaylinkSMSNotificationPath.new(to: '0700000000', template: 'alt')
    new_request = CityPayApiClient::PaylinkTokenRequestModel.new(amount: 2000, currency: 'USD', identifier: 'IDNT2', merchantid: 2)
    model.addressee = 'NewCust'
    model.attachments = [new_attachment]
    model.descriptor = 'Updated'
    model.due = Date.new(2025,2,2)
    model.email_notification_path = new_email
    model.memo = 'Updated memo'
    model.request = new_request
    model.sms_notification_path = new_sms
    expect(model.addressee).to eq('NewCust')
    expect(model.attachments).to eq([new_attachment])
    expect(model.descriptor).to eq('Updated')
    expect(model.due).to eq(Date.new(2025,2,2))
    expect(model.email_notification_path).to eq(new_email)
    expect(model.memo).to eq('Updated memo')
    expect(model.request).to eq(new_request)
    expect(model.sms_notification_path).to eq(new_sms)
  end

  it 'round trips via JSON' do
    json = model.to_hash.to_json
    obj = described_class.build_from_hash(JSON.parse(json))
    expect(obj).to eq(model)
  end
end
