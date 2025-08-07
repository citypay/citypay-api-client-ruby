require 'json'
require 'citypay_api_client/models/web_hook_channel_delete_request'

RSpec.describe CityPayApiClient::WebHookChannelDeleteRequest do
  let(:channel_delete_data) { { web_channel_id: 'chan123' } }
  let(:channel_delete_instance) { described_class.new(channel_delete_data) }

  it 'initializes with attributes' do
    expect(channel_delete_instance.web_channel_id).to eq('chan123')
  end

  it 'updates attribute' do
    channel_delete_instance.web_channel_id = 'chan999'
    expect(channel_delete_instance.web_channel_id).to eq('chan999')
  end

  it 'serializes and deserializes as JSON' do
    json = channel_delete_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(channel_delete_instance)
  end
end
