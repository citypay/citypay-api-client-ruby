require 'json'
require 'time'
require 'citypay_api_client/models/error'

RSpec.describe CityPayApiClient::Error do
  let(:fake_time) { Time.utc(2021, 1, 1, 12, 0, 0) }
  let(:fake_data) do
    {
      code: 'E1',
      context: 'CTX',
      identifier: 'ID1',
      message: 'msg',
      response_dt: fake_time
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.code).to eq('E1')
    expect(model_instance.identifier).to eq('ID1')
  end

  it 'allows setters and getters' do
    new_time = Time.utc(2022, 2, 2, 12, 0, 0)
    model_instance.code = 'E2'
    model_instance.context = 'CTX2'
    model_instance.identifier = 'ID2'
    model_instance.message = 'msg2'
    model_instance.response_dt = new_time
    expect(model_instance.code).to eq('E2')
    expect(model_instance.context).to eq('CTX2')
    expect(model_instance.identifier).to eq('ID2')
    expect(model_instance.message).to eq('msg2')
    expect(model_instance.response_dt).to eq(new_time)
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
