require 'json'
require 'citypay_api_client/models/web_hook_channel_create_request'
require 'citypay_api_client/models/http_config'

RSpec.describe CityPayApiClient::WebHookChannelCreateRequest do
  let(:http_config) { CityPayApiClient::HttpConfig.new(url: 'https://example.com', method: 'POST') }
  let(:channel_create_data) do
    {
      channel_name: 'orders',
      clientid: 'merchant1',
      config: http_config,
      endpoint_id: 'HTTP'
    }
  end
  let(:channel_create_instance) { described_class.new(channel_create_data) }

  it 'initializes with attributes' do
    expect(channel_create_instance.channel_name).to eq('orders')
    expect(channel_create_instance.clientid).to eq('merchant1')
    expect(channel_create_instance.config).to eq(http_config)
    expect(channel_create_instance.endpoint_id).to eq('HTTP')
  end

  it 'updates attributes' do
    new_config = CityPayApiClient::HttpConfig.new(url: 'https://other.com', method: 'GET')
    channel_create_instance.channel_name = 'payments'
    channel_create_instance.clientid = 'merchant2'
    channel_create_instance.config = new_config
    channel_create_instance.endpoint_id = 'HTTPS'

    expect(channel_create_instance.channel_name).to eq('payments')
    expect(channel_create_instance.clientid).to eq('merchant2')
    expect(channel_create_instance.config).to eq(new_config)
    expect(channel_create_instance.endpoint_id).to eq('HTTPS')
  end

  it 'round trips JSON' do
    json = channel_create_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(channel_create_instance)
  end
end
