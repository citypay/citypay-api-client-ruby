require 'json'
require 'time'
require 'citypay_api_client/models/auth_reference'

RSpec.describe CityPayApiClient::AuthReference do
  let(:fake_data) do
    {
      amount: '10.00',
      amount_value: 1000,
      atrn: 'ATRN1',
      authcode: 'AUTH',
      batchno: 'B1',
      currency: 'GBP',
      datetime: Time.utc(2021,1,1,12,0,0),
      identifier: 'ID100',
      maskedpan: '411111******1111',
      merchantid: 100,
      result: 'A',
      trans_status: 'Complete',
      trans_type: 'E',
      transno: 1
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'initializes with all attributes' do
    expect(model_instance.amount).to eq('10.00')
    expect(model_instance.transno).to eq(1)
  end

  it 'allows setters and getters' do
    model_instance.result = 'B'
    model_instance.amount = '20.00'
    model_instance.amount_value = 2000
    model_instance.atrn = 'ATRN2'
    model_instance.authcode = 'NEW'
    model_instance.batchno = 'B2'
    model_instance.currency = 'USD'
    model_instance.datetime = Time.utc(2022,2,2,12,0,0)
    model_instance.identifier = 'ID200'
    model_instance.maskedpan = '400000******0000'
    model_instance.merchantid = 200
    model_instance.trans_status = 'Pending'
    model_instance.trans_type = 'S'
    model_instance.transno = 2
    expect(model_instance.result).to eq('B')
    expect(model_instance.amount).to eq('20.00')
    expect(model_instance.amount_value).to eq(2000)
    expect(model_instance.atrn).to eq('ATRN2')
    expect(model_instance.authcode).to eq('NEW')
    expect(model_instance.batchno).to eq('B2')
    expect(model_instance.currency).to eq('USD')
    expect(model_instance.datetime).to eq(Time.utc(2022,2,2,12,0,0))
    expect(model_instance.identifier).to eq('ID200')
    expect(model_instance.maskedpan).to eq('400000******0000')
    expect(model_instance.merchantid).to eq(200)
    expect(model_instance.trans_status).to eq('Pending')
    expect(model_instance.trans_type).to eq('S')
    expect(model_instance.transno).to eq(2)
  end

  it 'serializes and deserializes through JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
