require 'json'
require 'date'
require 'time'
require 'citypay_api_client/models/batch_report_response_model'
require 'citypay_api_client/models/batch_transaction_result_model'

RSpec.describe CityPayApiClient::BatchReportResponseModel do
  let(:trans) do
    CityPayApiClient::BatchTransactionResultModel.new(
      account_id: 'ACCNT',
      amount: 500,
      authcode: 'A1',
      datetime: Time.utc(2022,1,1,0,0,0),
      identifier: 'IDNT',
      maskedpan: '411111******1111',
      merchantid: 1,
      message: 'OK',
      result: 1,
      result_code: 'A',
      scheme: 'VISA',
      scheme_id: 'ID',
      scheme_logo: 'logo',
      transno: 1
    )
  end
  let(:fake_data) do
    {
      amount: 500,
      batch_date: Date.new(2022,1,1),
      batch_id: 1,
      batch_status: 'Open',
      client_account_id: 'ACCNT',
      transactions: [trans]
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'initializes all fields' do
    expect(model_instance.amount).to eq(500)
    expect(model_instance.transactions.first).to eq(trans)
  end

  it 'allows modification of each attribute' do
    model_instance.amount = 700
    model_instance.batch_date = Date.new(2022,2,2)
    model_instance.batch_id = 2
    model_instance.batch_status = 'Closed'
    model_instance.client_account_id = 'ACCNT2'
    model_instance.transactions = [trans]
    expect(model_instance.amount).to eq(700)
    expect(model_instance.batch_date).to eq(Date.new(2022,2,2))
    expect(model_instance.batch_id).to eq(2)
    expect(model_instance.batch_status).to eq('Closed')
    expect(model_instance.client_account_id).to eq('ACCNT2')
    expect(model_instance.transactions).to eq([trans])
  end

  it 'serializes properly to JSON and back' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

