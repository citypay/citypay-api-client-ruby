require 'json'
require 'time'
require 'citypay_api_client/models/external_mpi'

RSpec.describe CityPayApiClient::ExternalMPI do
  let(:fake_data) do
    {
      authen_result: 'Y',
      cavv: 'abcdefgh1234567890',
      eci: 7,
      enrolled: 'Y',
      xid: 'xid1234567890123456'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model.authen_result).to eq('Y')
    expect(model.cavv).to eq('abcdefgh1234567890')
    expect(model.eci).to eq(7)
    expect(model.enrolled).to eq('Y')
    expect(model.xid).to eq('xid1234567890123456')
  end

  it 'allows attribute modification' do
    model.authen_result = 'N'
    model.cavv = '01234567890123456789'
    model.eci = 5
    model.enrolled = 'N'
    model.xid = 'newxid123456789012'
    expect(model.authen_result).to eq('N')
    expect(model.cavv).to eq('01234567890123456789')
    expect(model.eci).to eq(5)
    expect(model.enrolled).to eq('N')
    expect(model.xid).to eq('newxid123456789012')
  end

  it 'serializes to JSON and back' do
    json = model.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(model)
  end
end
