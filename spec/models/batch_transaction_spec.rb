require 'json'
require 'citypay_api_client/models/batch_transaction'

RSpec.describe CityPayApiClient::BatchTransaction do
  let(:fake_data) do
    {
      account_id: 'ACC',
      amount: 1000,
      identifier: 'ID',
      merchantid: 1
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'creates an instance with provided data' do
    expect(model_instance.account_id).to eq('ACC')
    expect(model_instance.amount).to eq(1000)
  end

  it 'changes each attribute properly' do
    model_instance.account_id = 'ACC2'
    model_instance.amount = 2000
    model_instance.identifier = 'ID2'
    model_instance.merchantid = 2
    expect(model_instance.account_id).to eq('ACC2')
    expect(model_instance.amount).to eq(2000)
    expect(model_instance.identifier).to eq('ID2')
    expect(model_instance.merchantid).to eq(2)
  end

  it 'handles JSON serialization and deserialization' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end

  it 'returns the correct hash representation' do
    expect(model_instance.to_hash).to eq(
      'account_id' => 'ACC',
      'amount' => 1000,
      'identifier' => 'ID',
      'merchantid' => 1
    )
  end
end

