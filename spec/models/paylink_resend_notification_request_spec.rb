require 'json'
require 'citypay_api_client/models/paylink_resend_notification_request'

RSpec.describe CityPayApiClient::PaylinkResendNotificationRequest do
  let(:fake_data) { { email: true, sms: false } }
  let(:model) { described_class.new(fake_data) }

  it 'initializes values correctly' do
    expect(model.email).to eq(true)
    expect(model.sms).to eq(false)
  end

  it 'mutates attributes via setters' do
    model.email = false
    model.sms = true
    expect(model.email).to eq(false)
    expect(model.sms).to eq(true)
  end

  it 'round trips to JSON and back' do
    json = model.to_hash.to_json
    clone = described_class.build_from_hash(JSON.parse(json))
    expect(clone).to eq(model)
  end
end
