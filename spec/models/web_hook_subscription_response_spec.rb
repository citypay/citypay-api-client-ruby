require 'json'
require 'citypay_api_client/models/web_hook_subscription_response'

RSpec.describe CityPayApiClient::WebHookSubscriptionResponse do
  let(:subscription_response_data) { { web_hook_id: 'hook123' } }
  let(:subscription_response_instance) { described_class.new(subscription_response_data) }

  it 'initializes with attributes' do
    expect(subscription_response_instance.web_hook_id).to eq('hook123')
  end

  it 'updates attribute' do
    subscription_response_instance.web_hook_id = 'hook999'
    expect(subscription_response_instance.web_hook_id).to eq('hook999')
  end

  it 'serializes and deserializes as JSON' do
    json = subscription_response_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(subscription_response_instance)
  end
end
