require 'json'
require 'citypay_api_client/models/paylink_cart'
require 'citypay_api_client/models/paylink_cart_item_model'

RSpec.describe CityPayApiClient::PaylinkCart do
  let(:item) do
    CityPayApiClient::PaylinkCartItemModel.new(
      amount: 100,
      brand: 'Acme',
      category: 'Tools',
      count: 1,
      label: 'Hammer',
      max: 2,
      sku: 'HAM123',
      variant: 'Steel'
    )
  end

  let(:fake_data) do
    {
      contents: [item],
      coupon: 'SAVE',
      mode: 1,
      product_description: 'Hardware',
      product_information: 'Best hammer',
      shipping: 500,
      tax: 50
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes values properly' do
    expect(model.contents).to eq([item])
    expect(model.coupon).to eq('SAVE')
    expect(model.mode).to eq(1)
    expect(model.product_description).to eq('Hardware')
    expect(model.product_information).to eq('Best hammer')
    expect(model.shipping).to eq(500)
    expect(model.tax).to eq(50)
  end

  it 'updates attributes correctly' do
    new_item = CityPayApiClient::PaylinkCartItemModel.new(amount: 200)
    model.contents = [new_item]
    model.coupon = 'NONE'
    model.mode = 2
    model.product_description = 'Tools'
    model.product_information = 'Updated info'
    model.shipping = 600
    model.tax = 60
    expect(model.contents).to eq([new_item])
    expect(model.coupon).to eq('NONE')
    expect(model.mode).to eq(2)
    expect(model.product_description).to eq('Tools')
    expect(model.product_information).to eq('Updated info')
    expect(model.shipping).to eq(600)
    expect(model.tax).to eq(60)
  end

  it 'serializes to JSON and back as expected' do
    json = model.to_hash.to_json
    obj = described_class.build_from_hash(JSON.parse(json))
    expect(obj).to eq(model)
  end

end
