require 'json'
require 'citypay_api_client/models/web_hook_channel_create_response'
require 'citypay_api_client/models/http_config'

RSpec.describe CityPayApiClient::WebHookChannelCreateResponse do
  let(:http_cfg) { CityPayApiClient::HttpConfig.new(url: 'https://example.com', method: 'POST') }
  let(:channel_response_data) do
    {
      config: http_cfg,
      endpoint_id: 'HTTP',
      web_channel_id: 'chan123'
    }
  end
  let(:channel_response_instance) { described_class.new(channel_response_data) }

  it 'initializes with attributes' do
    expect(channel_response_instance.config).to eq(http_cfg)
    expect(channel_response_instance.endpoint_id).to eq('HTTP')
    expect(channel_response_instance.web_channel_id).to eq('chan123')
  end

  it 'updates attributes' do
    new_cfg = CityPayApiClient::HttpConfig.new(url: 'https://other.com', method: 'GET')
    channel_response_instance.config = new_cfg
    channel_response_instance.endpoint_id = 'HTTPS'
    channel_response_instance.web_channel_id = 'chan999'

    expect(channel_response_instance.config).to eq(new_cfg)
    expect(channel_response_instance.endpoint_id).to eq('HTTPS')
    expect(channel_response_instance.web_channel_id).to eq('chan999')
  end

  it 'serializes and deserializes as JSON' do
    json = channel_response_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(channel_response_instance)
  end
end
