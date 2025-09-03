require 'json'
require 'citypay_api_client/models/paylink_custom_param'

RSpec.describe CityPayApiClient::PaylinkCustomParam do
  let(:fake_data) do
    {
      entry_mode: 'text',
      field_type: 'string',
      group: 'A',
      label: 'Label',
      locked: true,
      name: 'param1',
      order: 1,
      pattern: '^.*$',
      placeholder: 'enter',
      required: true,
      value: 'v1'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'creates object with attributes' do
    expect(model.entry_mode).to eq('text')
    expect(model.field_type).to eq('string')
    expect(model.group).to eq('A')
    expect(model.label).to eq('Label')
    expect(model.locked).to eq(true)
    expect(model.name).to eq('param1')
    expect(model.order).to eq(1)
    expect(model.pattern).to eq('^.*$')
    expect(model.placeholder).to eq('enter')
    expect(model.required).to eq(true)
    expect(model.value).to eq('v1')
  end

  it 'updates every field' do
    model.entry_mode = 'hidden'
    model.field_type = 'number'
    model.group = 'B'
    model.label = 'Label2'
    model.locked = false
    model.name = 'param2'
    model.order = 2
    model.pattern = '\\d+'
    model.placeholder = 'type'
    model.required = false
    model.value = 'v2'
    expect(model.entry_mode).to eq('hidden')
    expect(model.field_type).to eq('number')
    expect(model.group).to eq('B')
    expect(model.label).to eq('Label2')
    expect(model.locked).to eq(false)
    expect(model.name).to eq('param2')
    expect(model.order).to eq(2)
    expect(model.pattern).to eq('\\d+')
    expect(model.placeholder).to eq('type')
    expect(model.required).to eq(false)
    expect(model.value).to eq('v2')
  end

  it 'serializes and deserializes with JSON' do
    json = model.to_hash.to_json
    obj = described_class.build_from_hash(JSON.parse(json))
    expect(obj).to eq(model)
  end
end
