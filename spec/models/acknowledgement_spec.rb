require 'json'
require 'citypay_api_client/models/acknowledgement'

RSpec.describe CityPayApiClient::Acknowledgement do
  let(:fake_data) do
    {
      code: '001',
      context: 'CTX1',
      identifier: 'ID123',
      message: 'ok'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'initializes with provided values' do
    expect(model_instance.code).to eq('001')
    expect(model_instance.context).to eq('CTX1')
    expect(model_instance.identifier).to eq('ID123')
    expect(model_instance.message).to eq('ok')
  end

  it 'allows setting and getting fields' do
    model_instance.code = '002'
    expect(model_instance.code).to eq('002')
    model_instance.context = 'CTX2'
    model_instance.identifier = 'ID999'
    model_instance.message = 'updated'
    expect(model_instance.context).to eq('CTX2')
    expect(model_instance.identifier).to eq('ID999')
    expect(model_instance.message).to eq('updated')
  end

  it 'supports JSON serialization round trip' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
