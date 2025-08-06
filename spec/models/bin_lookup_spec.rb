require 'json'
require 'citypay_api_client/models/bin_lookup'

RSpec.describe CityPayApiClient::BinLookup do
  let(:lookup_data) { { bin: 123456 } }
  let(:lookup_instance) { described_class.new(lookup_data) }

  it 'creates an object with the provided bin' do
    expect(lookup_instance.bin).to eq(123456)
  end

  it 'updates and reads the bin attribute' do
    lookup_instance.bin = 654321
    expect(lookup_instance.bin).to eq(654321)
  end

  it 'converts to JSON and back correctly' do
    json = lookup_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(lookup_instance)
  end
end
