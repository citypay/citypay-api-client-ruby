require 'json'
require 'citypay_api_client/models/refund_request'

RSpec.describe CityPayApiClient::RefundRequest do
  let(:refund_data) do
    {
      amount: 100,
      identifier: 'REF1234',
      merchantid: 321,
      refund_ref: 789,
      trans_info: 'Operator1'
    }
  end
  let(:refund_instance) { described_class.new(refund_data) }

  it 'initializes with supplied values' do
    expect(refund_instance.amount).to eq(100)
    expect(refund_instance.identifier).to eq('REF1234')
    expect(refund_instance.merchantid).to eq(321)
    expect(refund_instance.refund_ref).to eq(789)
    expect(refund_instance.trans_info).to eq('Operator1')
  end

  it 'allows attribute updates' do
    refund_instance.amount = 200
    refund_instance.identifier = 'REF5678'
    refund_instance.merchantid = 123
    refund_instance.refund_ref = 456
    refund_instance.trans_info = 'Operator2'

    expect(refund_instance.amount).to eq(200)
    expect(refund_instance.identifier).to eq('REF5678')
    expect(refund_instance.merchantid).to eq(123)
    expect(refund_instance.refund_ref).to eq(456)
    expect(refund_instance.trans_info).to eq('Operator2')
  end

  it 'serializes to JSON and back' do
    json = refund_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(refund_instance)
  end
end
