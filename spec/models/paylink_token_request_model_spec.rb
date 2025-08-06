require 'json'
require 'citypay_api_client/models/paylink_token_request_model'
require 'citypay_api_client/models/paylink_card_holder'
require 'citypay_api_client/models/paylink_address'
require 'citypay_api_client/models/paylink_cart'
require 'citypay_api_client/models/paylink_cart_item_model'
require 'citypay_api_client/models/paylink_config'

RSpec.describe CityPayApiClient::PaylinkTokenRequestModel do
  let(:cardholder) do
    addr = CityPayApiClient::PaylinkAddress.new(address1: 'street')
    CityPayApiClient::PaylinkCardHolder.new(firstname: 'F', lastname: 'L', address: addr)
  end
  let(:cart_item) { CityPayApiClient::PaylinkCartItemModel.new(label: 'item', amount: 50) }
  let(:cart) { CityPayApiClient::PaylinkCart.new(contents: [cart_item]) }
  let(:config) { CityPayApiClient::PaylinkConfig.new(renderer: 'json') }
  let(:fake_data) do
    {
      accountno: 'acc',
      amount: 100,
      cardholder: cardholder,
      cart: cart,
      client_version: '1.0',
      config: config,
      currency: 'USD',
      email: 'a@test.com',
      identifier: 'abcd',
      merchantid: 1,
      recurring: true,
      subscription_id: 'sub',
      tx_type: 'sale'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'creates a model with provided data' do
    expect(model.accountno).to eq('acc')
    expect(model.amount).to eq(100)
    expect(model.cardholder).to eq(cardholder)
    expect(model.cart).to eq(cart)
    expect(model.client_version).to eq('1.0')
    expect(model.config).to eq(config)
    expect(model.currency).to eq('USD')
    expect(model.email).to eq('a@test.com')
    expect(model.identifier).to eq('abcd')
    expect(model.merchantid).to eq(1)
    expect(model.recurring).to eq(true)
    expect(model.subscription_id).to eq('sub')
    expect(model.tx_type).to eq('sale')
  end

  it 'allows updates via setters' do
    new_holder = CityPayApiClient::PaylinkCardHolder.new(firstname: 'N')
    new_cart = CityPayApiClient::PaylinkCart.new(coupon: 'c')
    new_conf = CityPayApiClient::PaylinkConfig.new(renderer: 'html')
    model.accountno = 'acc2'
    model.amount = 200
    model.cardholder = new_holder
    model.cart = new_cart
    model.client_version = '2.0'
    model.config = new_conf
    model.currency = 'GBP'
    model.email = 'b@test.com'
    model.identifier = 'efgh'
    model.merchantid = 2
    model.recurring = false
    model.subscription_id = 'sub2'
    model.tx_type = 'refund'

    expect(model.accountno).to eq('acc2')
    expect(model.amount).to eq(200)
    expect(model.cardholder).to eq(new_holder)
    expect(model.cart).to eq(new_cart)
    expect(model.client_version).to eq('2.0')
    expect(model.config).to eq(new_conf)
    expect(model.currency).to eq('GBP')
    expect(model.email).to eq('b@test.com')
    expect(model.identifier).to eq('efgh')
    expect(model.merchantid).to eq(2)
    expect(model.recurring).to eq(false)
    expect(model.subscription_id).to eq('sub2')
    expect(model.tx_type).to eq('refund')
  end

  it 'serializes to JSON and back' do
    json = model.to_hash.to_json
    copy = described_class.build_from_hash(JSON.parse(json))
    expect(copy).to eq(model)
  end
end
