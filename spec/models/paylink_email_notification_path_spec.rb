require 'json'
require 'citypay_api_client/models/paylink_email_notification_path'

RSpec.describe CityPayApiClient::PaylinkEmailNotificationPath do
  let(:fake_data) do
    {
      bcc: ['b@example.com'],
      cc: ['c@example.com'],
      reply_to: ['reply@example.com'],
      template: 'tpl',
      to: ['to@example.com']
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes attributes' do
    expect(model.bcc).to eq(['b@example.com'])
    expect(model.cc).to eq(['c@example.com'])
    expect(model.reply_to).to eq(['reply@example.com'])
    expect(model.template).to eq('tpl')
    expect(model.to).to eq(['to@example.com'])
  end

  it 'mutates getters and setters' do
    model.bcc = ['b2@example.com']
    model.cc = ['c2@example.com']
    model.reply_to = ['r2@example.com']
    model.template = 'tpl2'
    model.to = ['to2@example.com']
    expect(model.bcc).to eq(['b2@example.com'])
    expect(model.cc).to eq(['c2@example.com'])
    expect(model.reply_to).to eq(['r2@example.com'])
    expect(model.template).to eq('tpl2')
    expect(model.to).to eq(['to2@example.com'])
  end

  it 'handles JSON serialization' do
    json = model.to_hash.to_json
    obj = described_class.build_from_hash(JSON.parse(json))
    expect(obj).to eq(model)
  end
end
