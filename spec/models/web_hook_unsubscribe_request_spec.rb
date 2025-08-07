require 'json'
require 'citypay_api_client/models/web_hook_unsubscribe_request'

RSpec.describe CityPayApiClient::WebHookUnsubscribeRequest do
  let(:unsubscribe_data) { { clientid: 'merchant1', web_hook_id: 'hook123' } }
  let(:unsubscribe_instance) { described_class.new(unsubscribe_data) }

  it 'initializes with attributes' do
    expect(unsubscribe_instance.clientid).to eq('merchant1')
    expect(unsubscribe_instance.web_hook_id).to eq('hook123')
  end

  it 'updates attributes' do
    unsubscribe_instance.clientid = 'merchant2'
    unsubscribe_instance.web_hook_id = 'hook999'

    expect(unsubscribe_instance.clientid).to eq('merchant2')
    expect(unsubscribe_instance.web_hook_id).to eq('hook999')
  end

  it 'serializes and deserializes as JSON' do
    json = unsubscribe_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(unsubscribe_instance)
  end
end
