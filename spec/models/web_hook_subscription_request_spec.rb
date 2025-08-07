require 'json'
require 'citypay_api_client/models/web_hook_subscription_request'

RSpec.describe CityPayApiClient::WebHookSubscriptionRequest do
  let(:subscription_data) do
    {
      channels: ['channel1', 'channel2'],
      clientid: 'merchant1',
      live: true,
      merchant_id: [1001, 1002],
      triggers: ['capture', 'refund']
    }
  end
  let(:subscription_instance) { described_class.new(subscription_data) }

  it 'initializes with attributes' do
    expect(subscription_instance.channels).to eq(['channel1', 'channel2'])
    expect(subscription_instance.clientid).to eq('merchant1')
    expect(subscription_instance.live).to eq(true)
    expect(subscription_instance.merchant_id).to eq([1001, 1002])
    expect(subscription_instance.triggers).to eq(['capture', 'refund'])
  end

  it 'updates attributes' do
    subscription_instance.channels = ['channel3']
    subscription_instance.clientid = 'merchant2'
    subscription_instance.live = false
    subscription_instance.merchant_id = [2001]
    subscription_instance.triggers = ['void']

    expect(subscription_instance.channels).to eq(['channel3'])
    expect(subscription_instance.clientid).to eq('merchant2')
    expect(subscription_instance.live).to eq(false)
    expect(subscription_instance.merchant_id).to eq([2001])
    expect(subscription_instance.triggers).to eq(['void'])
  end

  it 'serializes and deserializes as JSON' do
    json = subscription_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(subscription_instance)
  end
end
