require 'json'
require 'citypay_api_client/models/paylink_attachment_request'

RSpec.describe CityPayApiClient::PaylinkAttachmentRequest do
  let(:fake_data) do
    {
      data: 'ZGF0YQo=',
      filename: 'file.txt',
      mime_type: 'text/plain',
      name: 'doc',
      retention: 30
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes fields properly' do
    expect(model.data).to eq('ZGF0YQo=')
    expect(model.filename).to eq('file.txt')
    expect(model.mime_type).to eq('text/plain')
    expect(model.name).to eq('doc')
    expect(model.retention).to eq(30)
  end

  it 'supports setter updates' do
    model.data = 'bmV3'
    model.filename = 'new.txt'
    model.mime_type = 'application/octet-stream'
    model.name = 'new_doc'
    model.retention = 60
    expect(model.data).to eq('bmV3')
    expect(model.filename).to eq('new.txt')
    expect(model.mime_type).to eq('application/octet-stream')
    expect(model.name).to eq('new_doc')
    expect(model.retention).to eq(60)
  end

  it 'serializes correctly to JSON and back' do
    json = model.to_hash.to_json
    revived = described_class.build_from_hash(JSON.parse(json))
    expect(revived).to eq(model)
  end
end
