require 'json'
require 'citypay_api_client/models/http_config'

RSpec.describe CityPayApiClient::HttpConfig do
  let(:initial_headers) { { 'X-Test' => '1' } }
  let(:config_data) do
    {
      connect_timeout: 1000,
      content_type: 'application/json',
      headers: initial_headers,
      method: 'POST',
      read_timeout: 2000,
      url: 'https://example.com/hook'
    }
  end
  let(:config_instance) { described_class.new(config_data) }

  it 'initializes attributes' do
    expect(config_instance.connect_timeout).to eq(1000)
    expect(config_instance.content_type).to eq('application/json')
    expect(config_instance.headers).to eq(initial_headers)
    expect(config_instance.method).to eq('POST')
    expect(config_instance.read_timeout).to eq(2000)
    expect(config_instance.url).to eq('https://example.com/hook')
  end

  it 'updates attributes' do
    new_headers = { 'X-Other' => '2' }
    config_instance.connect_timeout = 1500
    config_instance.content_type = 'text/plain'
    config_instance.headers = new_headers
    config_instance.method = 'GET'
    config_instance.read_timeout = 2500
    config_instance.url = 'https://other.test/path'

    expect(config_instance.connect_timeout).to eq(1500)
    expect(config_instance.content_type).to eq('text/plain')
    expect(config_instance.headers).to eq(new_headers)
    expect(config_instance.method).to eq('GET')
    expect(config_instance.read_timeout).to eq(2500)
    expect(config_instance.url).to eq('https://other.test/path')
  end

  it 'validates timeout thresholds' do
    expect { config_instance.connect_timeout = 999 }.to raise_error(ArgumentError)
    expect { config_instance.read_timeout = 500 }.to raise_error(ArgumentError)
  end

  it 'round trips to JSON' do
    json = config_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(config_instance)
  end
end

