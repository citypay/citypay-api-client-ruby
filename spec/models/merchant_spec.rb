require 'json'
require 'citypay_api_client/models/merchant'

RSpec.describe CityPayApiClient::Merchant do
  let(:fake_data) do
    {
      currency: 'GBP',
      merchantid: 1234,
      name: 'Demo Shop',
      status: 'A',
      status_label: 'Active'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes with provided values' do
    expect(model.currency).to eq('GBP')
    expect(model.merchantid).to eq(1234)
    expect(model.name).to eq('Demo Shop')
    expect(model.status).to eq('A')
    expect(model.status_label).to eq('Active')
  end

  it 'updates attributes properly' do
    model.currency = 'USD'
    model.merchantid = 5678
    model.name = 'New Name'
    model.status = 'S'
    model.status_label = 'Settled'
    expect(model.currency).to eq('USD')
    expect(model.merchantid).to eq(5678)
    expect(model.name).to eq('New Name')
    expect(model.status).to eq('S')
    expect(model.status_label).to eq('Settled')
  end

  it 'converts to JSON and back' do
    json = model.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(model)
  end
end
