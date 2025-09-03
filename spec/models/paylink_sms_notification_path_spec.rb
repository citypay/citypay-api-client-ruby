require 'json'
require 'citypay_api_client/models/paylink_sms_notification_path'

RSpec.describe CityPayApiClient::PaylinkSMSNotificationPath do
  let(:fake_data) { { template: 'tpl1', to: '+1234567890' } }
  let(:model) { described_class.new(fake_data) }

  it 'sets initial attributes' do
    expect(model.template).to eq('tpl1')
    expect(model.to).to eq('+1234567890')
  end

  it 'updates getters through setters' do
    model.template = 'tpl2'
    model.to = '+0987654321'
    expect(model.template).to eq('tpl2')
    expect(model.to).to eq('+0987654321')
  end

  it 'serializes and deserializes correctly' do
    json = model.to_hash.to_json
    copy = described_class.build_from_hash(JSON.parse(json))
    expect(copy).to eq(model)
  end
end
