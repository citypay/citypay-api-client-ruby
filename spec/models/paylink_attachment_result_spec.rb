require 'json'
require 'citypay_api_client/models/paylink_attachment_result'

RSpec.describe CityPayApiClient::PaylinkAttachmentResult do
  let(:fake_data) do
    {
      name: 'invoice.pdf',
      result: 'OK',
      url: 'http://upload'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes attributes properly' do
    expect(model.name).to eq('invoice.pdf')
    expect(model.result).to eq('OK')
    expect(model.url).to eq('http://upload')
  end

  it 'updates each field via setters' do
    model.name = 'receipt.txt'
    model.result = 'UPLOADED'
    model.url = 'http://new'
    expect(model.name).to eq('receipt.txt')
    expect(model.result).to eq('UPLOADED')
    expect(model.url).to eq('http://new')
  end

  it 'serializes to JSON and back correctly' do
    json = model.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model)
  end
end
