require 'json'
require 'citypay_api_client/models/paylink_cart_item_model'

RSpec.describe CityPayApiClient::PaylinkCartItemModel do
  let(:fake_data) do
    {
      amount: 555,
      brand: 'BrandX',
      category: 'Goods',
      count: 2,
      label: 'Widget',
      max: 5,
      sku: 'SKU1',
      variant: 'Blue'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'builds correctly with attributes' do
    expect(model.amount).to eq(555)
    expect(model.brand).to eq('BrandX')
    expect(model.category).to eq('Goods')
    expect(model.count).to eq(2)
    expect(model.label).to eq('Widget')
    expect(model.max).to eq(5)
    expect(model.sku).to eq('SKU1')
    expect(model.variant).to eq('Blue')
  end

  it 'updates fields properly' do
    model.amount = 999
    model.brand = 'BrandY'
    model.category = 'Other'
    model.count = 3
    model.label = 'Gadget'
    model.max = 10
    model.sku = 'SKU2'
    model.variant = 'Red'
    expect(model.amount).to eq(999)
    expect(model.brand).to eq('BrandY')
    expect(model.category).to eq('Other')
    expect(model.count).to eq(3)
    expect(model.label).to eq('Gadget')
    expect(model.max).to eq(10)
    expect(model.sku).to eq('SKU2')
    expect(model.variant).to eq('Red')
  end

  it 'converts to JSON and back' do
    json = model.to_hash.to_json
    recreated = described_class.build_from_hash(JSON.parse(json))
    expect(recreated).to eq(model)
  end
end
