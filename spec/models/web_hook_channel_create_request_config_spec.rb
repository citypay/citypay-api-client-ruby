require 'json'
require 'citypay_api_client/models/web_hook_channel_create_request_config'
require 'citypay_api_client/models/http_config'

RSpec.describe CityPayApiClient::WebHookChannelCreateRequestConfig do
  it 'builds a HttpConfig based on discriminator' do
    data = {
      'config' => 'HttpConfig',
      'url' => 'https://example.com',
      'method' => 'POST'
    }
    config = described_class.build(data)
    expect(config).to be_a(CityPayApiClient::HttpConfig)
    expect(config.url).to eq('https://example.com')
    expect(config.method).to eq('POST')
  end
end
