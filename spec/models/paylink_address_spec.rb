require 'json'
require 'citypay_api_client/models/paylink_address'

RSpec.describe CityPayApiClient::PaylinkAddress do
  let(:fake_data) do
    {
      address1: '1 Fake Road',
      address2: 'Unit 2',
      address3: 'Block 3',
      area: 'Faketown',
      country: 'GB',
      label: 'Work',
      postcode: 'AB12CD'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes with provided data' do
    expect(model.address1).to eq('1 Fake Road')
    expect(model.address2).to eq('Unit 2')
    expect(model.address3).to eq('Block 3')
    expect(model.area).to eq('Faketown')
    expect(model.country).to eq('GB')
    expect(model.label).to eq('Work')
    expect(model.postcode).to eq('AB12CD')
  end

  it 'allows updates via setters' do
    model.address1 = 'New 1'
    model.address2 = 'New 2'
    model.address3 = 'New 3'
    model.area = 'Newtown'
    model.country = 'US'
    model.label = 'Home'
    model.postcode = 'CD34EF'
    expect(model.address1).to eq('New 1')
    expect(model.address2).to eq('New 2')
    expect(model.address3).to eq('New 3')
    expect(model.area).to eq('Newtown')
    expect(model.country).to eq('US')
    expect(model.label).to eq('Home')
    expect(model.postcode).to eq('CD34EF')
  end

  it 'converts to JSON and back accurately' do
    json = model.to_hash.to_json
    obj = described_class.build_from_hash(JSON.parse(json))
    expect(obj).to eq(model)
  end
end
