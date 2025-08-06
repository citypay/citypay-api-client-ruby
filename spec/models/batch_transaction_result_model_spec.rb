require 'json'
require 'time'
require 'citypay_api_client/models/batch_transaction_result_model'

RSpec.describe CityPayApiClient::BatchTransactionResultModel do
  let(:fake_time) { Time.utc(2022,1,1,0,0,0) }
  let(:fake_data) do
    {
      account_id: 'ACC',
      amount: 1000,
      authcode: 'A1',
      datetime: fake_time,
      identifier: 'ID',
      maskedpan: '411111******1111',
      merchantid: 1,
      message: 'OK',
      result: 1,
      result_code: 'A',
      scheme: 'VISA',
      scheme_id: 'SID',
      scheme_logo: 'logo',
      transno: 1
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'initializes correctly' do
    expect(model_instance.account_id).to eq('ACC')
    expect(model_instance.amount).to eq(1000)
  end

  it 'modifies and retrieves each attribute' do
    model_instance.account_id = 'ACC2'
    model_instance.amount = 2000
    model_instance.authcode = 'B2'
    model_instance.datetime = fake_time + 60
    model_instance.identifier = 'ID2'
    model_instance.maskedpan = '400000******0002'
    model_instance.merchantid = 2
    model_instance.message = 'FAIL'
    model_instance.result = 2
    model_instance.result_code = 'B'
    model_instance.scheme = 'MC'
    model_instance.scheme_id = 'SID2'
    model_instance.scheme_logo = 'logo2'
    model_instance.transno = 2
    expect(model_instance.account_id).to eq('ACC2')
    expect(model_instance.amount).to eq(2000)
    expect(model_instance.authcode).to eq('B2')
    expect(model_instance.datetime).to eq(fake_time + 60)
    expect(model_instance.identifier).to eq('ID2')
    expect(model_instance.maskedpan).to eq('400000******0002')
    expect(model_instance.merchantid).to eq(2)
    expect(model_instance.message).to eq('FAIL')
    expect(model_instance.result).to eq(2)
    expect(model_instance.result_code).to eq('B')
    expect(model_instance.scheme).to eq('MC')
    expect(model_instance.scheme_id).to eq('SID2')
    expect(model_instance.scheme_logo).to eq('logo2')
    expect(model_instance.transno).to eq(2)
  end

  it 'serializes to JSON and back' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

