require 'json'
require 'citypay_api_client/models/bin'

RSpec.describe CityPayApiClient::Bin do
  let(:bin_data) do
    {
      bin_commercial: true,
      bin_corporate: false,
      bin_country_issued: 'US',
      bin_credit: true,
      bin_currency: 'USD',
      bin_debit: false,
      bin_description: 'Business',
      bin_eu: false,
      scheme: 'VISA'
    }
  end
  let(:bin_instance) { described_class.new(bin_data) }

  it 'initializes with provided attributes' do
    expect(bin_instance.bin_commercial).to eq(true)
    expect(bin_instance.bin_corporate).to eq(false)
    expect(bin_instance.bin_country_issued).to eq('US')
    expect(bin_instance.bin_credit).to eq(true)
    expect(bin_instance.bin_currency).to eq('USD')
    expect(bin_instance.bin_debit).to eq(false)
    expect(bin_instance.bin_description).to eq('Business')
    expect(bin_instance.bin_eu).to eq(false)
    expect(bin_instance.scheme).to eq('VISA')
  end

  it 'allows updates via setters' do
    bin_instance.bin_commercial = false
    bin_instance.bin_corporate = true
    bin_instance.bin_country_issued = 'GB'
    bin_instance.bin_credit = false
    bin_instance.bin_currency = 'GBP'
    bin_instance.bin_debit = true
    bin_instance.bin_description = 'Updated'
    bin_instance.bin_eu = true
    bin_instance.scheme = 'MC'
    expect(bin_instance.bin_commercial).to eq(false)
    expect(bin_instance.bin_corporate).to eq(true)
    expect(bin_instance.bin_country_issued).to eq('GB')
    expect(bin_instance.bin_credit).to eq(false)
    expect(bin_instance.bin_currency).to eq('GBP')
    expect(bin_instance.bin_debit).to eq(true)
    expect(bin_instance.bin_description).to eq('Updated')
    expect(bin_instance.bin_eu).to eq(true)
    expect(bin_instance.scheme).to eq('MC')
  end

  it 'serializes and deserializes correctly' do
    json = bin_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(bin_instance)
  end
end
