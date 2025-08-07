require 'json'
require 'time'
require 'citypay_api_client/models/three_d_secure'

RSpec.describe CityPayApiClient::ThreeDSecure do
  let(:tds_data) do
    {
      accept_headers: 'text/html',
      browser_color_depth: '24',
      browser_ip: '192.0.2.2',
      browser_java_enabled: 'true',
      browser_language: 'en-GB',
      browser_screen_height: '1080',
      browser_screen_width: '1920',
      browser_tz: '+60',
      cp_bx: 'bxvalue',
      downgrade1: true,
      merchant_termurl: 'https://merchant.example.com/3ds',
      tds_policy: '1',
      user_agent: 'Mozilla'
    }
  end
  let(:tds_instance) { described_class.new(tds_data) }

  it 'sets provided attributes' do
    expect(tds_instance.accept_headers).to eq('text/html')
    expect(tds_instance.browser_ip).to eq('192.0.2.2')
    expect(tds_instance.cp_bx).to eq('bxvalue')
    expect(tds_instance.downgrade1).to eq(true)
    expect(tds_instance.merchant_termurl).to eq('https://merchant.example.com/3ds')
    expect(tds_instance.user_agent).to eq('Mozilla')
  end

  it 'allows updating fields' do
    tds_instance.accept_headers = 'application/json'
    tds_instance.browser_ip = '198.51.100.1'
    tds_instance.cp_bx = 'newbx'
    tds_instance.downgrade1 = false
    tds_instance.merchant_termurl = 'https://merchant.example.org/3ds'
    tds_instance.user_agent = 'Chrome'

    expect(tds_instance.accept_headers).to eq('application/json')
    expect(tds_instance.browser_ip).to eq('198.51.100.1')
    expect(tds_instance.cp_bx).to eq('newbx')
    expect(tds_instance.downgrade1).to eq(false)
    expect(tds_instance.merchant_termurl).to eq('https://merchant.example.org/3ds')
    expect(tds_instance.user_agent).to eq('Chrome')
  end

  it 'serializes to JSON and back' do
    json = tds_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(tds_instance)
  end
end
