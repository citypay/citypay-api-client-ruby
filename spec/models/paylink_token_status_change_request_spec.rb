require 'json'
require 'citypay_api_client/models/paylink_token_status_change_request'

RSpec.describe CityPayApiClient::PaylinkTokenStatusChangeRequest do
  let(:fake_data) do
    {
      after: Time.utc(2020,1,1),
      max_results: 20,
      merchantid: 100,
      next_token: 'start',
      order_by: 'p.id DESC'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'creates instance with parameters' do
    expect(model.after).to eq(Time.utc(2020,1,1))
    expect(model.max_results).to eq(20)
    expect(model.merchantid).to eq(100)
    expect(model.next_token).to eq('start')
    expect(model.order_by).to eq('p.id DESC')
  end

  it 'updates attributes correctly' do
    model.after = Time.utc(2021,2,2)
    model.max_results = 10
    model.merchantid = 200
    model.next_token = 'next'
    model.order_by = '-p.id'

    expect(model.after).to eq(Time.utc(2021,2,2))
    expect(model.max_results).to eq(10)
    expect(model.merchantid).to eq(200)
    expect(model.next_token).to eq('next')
    expect(model.order_by).to eq('-p.id')
  end

  it 'converts to JSON and back' do
    json = model.to_hash.to_json
    obj = described_class.build_from_hash(JSON.parse(json))
    expect(obj).to eq(model)
  end
end
