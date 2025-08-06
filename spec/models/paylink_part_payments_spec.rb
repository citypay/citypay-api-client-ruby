require 'json'
require 'citypay_api_client/models/paylink_part_payments'

RSpec.describe CityPayApiClient::PaylinkPartPayments do
  let(:fake_data) do
    {
      enabled: 'Y',
      floor: '10',
      max: '20',
      max_rate: '15',
      min: '5',
      min_rate: '3'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes with provided values' do
    expect(model.enabled).to eq('Y')
    expect(model.floor).to eq('10')
    expect(model.max).to eq('20')
    expect(model.max_rate).to eq('15')
    expect(model.min).to eq('5')
    expect(model.min_rate).to eq('3')
  end

  it 'updates attributes through setters' do
    model.enabled = 'N'
    model.floor = '11'
    model.max = '21'
    model.max_rate = '16'
    model.min = '6'
    model.min_rate = '4'

    expect(model.enabled).to eq('N')
    expect(model.floor).to eq('11')
    expect(model.max).to eq('21')
    expect(model.max_rate).to eq('16')
    expect(model.min).to eq('6')
    expect(model.min_rate).to eq('4')
  end

  it 'serializes and deserializes properly' do
    json = model.to_hash.to_json
    other = described_class.build_from_hash(JSON.parse(json))
    expect(other).to eq(model)
  end
end
