require 'json'
require 'time'
require 'citypay_api_client/models/auth_references'
require 'citypay_api_client/models/auth_reference'

RSpec.describe CityPayApiClient::AuthReferences do
  let(:ref1) do
    CityPayApiClient::AuthReference.new(
      amount: '1.00',
      amount_value: 100,
      atrn: 'A1',
      authcode: 'AA',
      batchno: 'B1',
      currency: 'GBP',
      datetime: Time.utc(2021,1,1,0,0,0),
      identifier: 'ID1',
      maskedpan: '411111******1111',
      merchantid: 1,
      result: 'A',
      trans_status: 'Done',
      trans_type: 'S',
      transno: 1
    )
  end
  let(:ref2) do
    CityPayApiClient::AuthReference.new(
      amount: '2.00',
      amount_value: 200,
      atrn: 'A2',
      authcode: 'BB',
      batchno: 'B2',
      currency: 'USD',
      datetime: Time.utc(2021,2,2,0,0,0),
      identifier: 'ID2',
      maskedpan: '400000******0000',
      merchantid: 2,
      result: 'B',
      trans_status: 'Done',
      trans_type: 'E',
      transno: 2
    )
  end
  let(:fake_data) { { auths: [ref1, ref2] } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'creates with array of references' do
    expect(model_instance.auths.length).to eq(2)
  end

  it 'allows mutation of auths' do
    model_instance.auths << ref1
    expect(model_instance.auths.size).to eq(3)
    model_instance.auths = [ref2]
    expect(model_instance.auths).to eq([ref2])
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
