require 'json'
require 'time'
require 'citypay_api_client/models/batch_transaction_report_response'
require 'citypay_api_client/models/auth_reference'

RSpec.describe CityPayApiClient::BatchTransactionReportResponse do
  let(:auth_ref) do
    CityPayApiClient::AuthReference.new(
      amount: '1.00',
      amount_value: 100,
      atrn: 'ATRN',
      authcode: 'A',
      batchno: 'B',
      currency: 'GBP',
      datetime: Time.utc(2022,1,1,0,0,0),
      identifier: 'ID',
      maskedpan: '411111******1111',
      merchantid: 1,
      result: 'A',
      trans_status: 'C',
      trans_type: 'S',
      transno: 1
    )
  end
  let(:fake_data) { { count: 1, data: [auth_ref], max_results: 10, next_token: 'abc' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'creates with all attributes' do
    expect(model_instance.count).to eq(1)
    expect(model_instance.data.first).to eq(auth_ref)
  end

  it 'updates every field' do
    model_instance.count = 2
    model_instance.data = [auth_ref]
    model_instance.max_results = 5
    model_instance.next_token = 'def'
    expect(model_instance.count).to eq(2)
    expect(model_instance.data).to eq([auth_ref])
    expect(model_instance.max_results).to eq(5)
    expect(model_instance.next_token).to eq('def')
  end

  it 'converts to and from JSON properly' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

