require 'json'
require 'time'
require 'citypay_api_client/models/list_merchants_response'
require 'citypay_api_client/models/merchant'

RSpec.describe CityPayApiClient::ListMerchantsResponse do
  let(:fake_merchants) do
    [
      CityPayApiClient::Merchant.new(currency: 'USD', merchantid: 11, name: 'One', status: 'A', status_label: 'Active'),
      CityPayApiClient::Merchant.new(currency: 'EUR', merchantid: 22, name: 'Two', status: 'T', status_label: 'Test')
    ]
  end
  let(:fake_data) do
    {
      client_name: 'Example Client',
      clientid: 'CLNT1',
      merchants: fake_merchants
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'constructs with attributes' do
    expect(model.client_name).to eq('Example Client')
    expect(model.clientid).to eq('CLNT1')
    expect(model.merchants).to eq(fake_merchants)
  end

  it 'updates values correctly' do
    new_merchants = [CityPayApiClient::Merchant.new(currency: 'GBP', merchantid: 33, name: 'Three', status: 'S', status_label: 'Settled')]
    model.client_name = 'Changed'
    model.clientid = 'CLNT2'
    model.merchants = new_merchants
    expect(model.client_name).to eq('Changed')
    expect(model.clientid).to eq('CLNT2')
    expect(model.merchants).to eq(new_merchants)
  end

  it 'serializes to JSON and back' do
    json = model.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(model)
  end
end
