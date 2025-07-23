require 'json'
require 'citypay_api_client/models/paylink_field_guard_model'

RSpec.describe CityPayApiClient::PaylinkFieldGuardModel do
  let(:fake_data) do
    {
      field_type: 'text',
      label: 'Label',
      maxlen: 10,
      minlen: 1,
      name: 'field',
      regex: '^.*$',
      value: 'hello'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes all properties' do
    expect(model.field_type).to eq('text')
    expect(model.label).to eq('Label')
    expect(model.maxlen).to eq(10)
    expect(model.minlen).to eq(1)
    expect(model.name).to eq('field')
    expect(model.regex).to eq('^.*$')
    expect(model.value).to eq('hello')
  end

  it 'allows mutation via setters' do
    model.field_type = 'number'
    model.label = 'Other'
    model.maxlen = 20
    model.minlen = 2
    model.name = 'field2'
    model.regex = '\\d+'
    model.value = '42'
    expect(model.field_type).to eq('number')
    expect(model.label).to eq('Other')
    expect(model.maxlen).to eq(20)
    expect(model.minlen).to eq(2)
    expect(model.name).to eq('field2')
    expect(model.regex).to eq('\\d+')
    expect(model.value).to eq('42')
  end

  it 'round trips JSON successfully' do
    json = model.to_hash.to_json
    obj = described_class.build_from_hash(JSON.parse(json))
    expect(obj).to eq(model)
  end
end
