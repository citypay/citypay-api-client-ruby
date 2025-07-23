require 'json'
require 'citypay_api_client/models/paylink_token_created'
require 'citypay_api_client/models/paylink_attachment_result'
require 'citypay_api_client/models/paylink_error_code'

RSpec.describe CityPayApiClient::PaylinkTokenCreated do
  let(:attachment) { CityPayApiClient::PaylinkAttachmentResult.new(name: 'doc', result: 'OK', url: 'http://u') }
  let(:error) { CityPayApiClient::PaylinkErrorCode.new(code: 1, msg: 'oops') }
  let(:fake_data) do
    {
      attachments: attachment,
      bps: 'on',
      date_created: Time.utc(2022, 1, 1, 0, 0, 0),
      errors: [error],
      id: 'id1',
      identifier: 'abcd',
      mode: 'test',
      qrcode: 'http://qr',
      result: 1,
      server_version: '1.0',
      source: 'src',
      token: 'tok1',
      url: 'http://pay',
      usc: 'usc1'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'sets all fields from constructor' do
    expect(model.attachments).to eq(attachment)
    expect(model.bps).to eq('on')
    expect(model.date_created).to eq(Time.utc(2022, 1, 1, 0, 0, 0))
    expect(model.errors).to eq([error])
    expect(model.id).to eq('id1')
    expect(model.identifier).to eq('abcd')
    expect(model.mode).to eq('test')
    expect(model.qrcode).to eq('http://qr')
    expect(model.result).to eq(1)
    expect(model.server_version).to eq('1.0')
    expect(model.source).to eq('src')
    expect(model.token).to eq('tok1')
    expect(model.url).to eq('http://pay')
    expect(model.usc).to eq('usc1')
  end

  it 'mutates and retrieves attributes' do
    new_error = CityPayApiClient::PaylinkErrorCode.new(code: 2, msg: 'err')
    new_attachment = CityPayApiClient::PaylinkAttachmentResult.new(name: 'img', result: 'UP', url: 'http://n')
    model.attachments = new_attachment
    model.bps = 'off'
    new_date = Time.utc(2023, 2, 2, 0, 0, 0)
    model.date_created = new_date
    model.errors = [new_error]
    model.id = 'id2'
    model.identifier = 'efgh'
    model.mode = 'live'
    model.qrcode = 'http://qr2'
    model.result = 0
    model.server_version = '2.0'
    model.source = 'src2'
    model.token = 'tok2'
    model.url = 'http://pay2'
    model.usc = 'usc2'

    expect(model.attachments).to eq(new_attachment)
    expect(model.bps).to eq('off')
    expect(model.date_created).to eq(new_date)
    expect(model.errors).to eq([new_error])
    expect(model.id).to eq('id2')
    expect(model.identifier).to eq('efgh')
    expect(model.mode).to eq('live')
    expect(model.qrcode).to eq('http://qr2')
    expect(model.result).to eq(0)
    expect(model.server_version).to eq('2.0')
    expect(model.source).to eq('src2')
    expect(model.token).to eq('tok2')
    expect(model.url).to eq('http://pay2')
    expect(model.usc).to eq('usc2')
  end

  it 'converts to JSON and back' do
    json = model.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(model)
  end
end
