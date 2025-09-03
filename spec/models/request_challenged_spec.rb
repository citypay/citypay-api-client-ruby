require 'json'
require 'citypay_api_client/models/request_challenged'

RSpec.describe CityPayApiClient::RequestChallenged do
  let(:challenge_data) do
    {
      acs_url: 'https://acs.example.com',
      creq: 'creqdata',
      merchantid: 123,
      threedserver_trans_id: 'abc123',
      transno: 99
    }
  end
  let(:challenge_instance) { described_class.new(challenge_data) }

  it 'initializes with given data' do
    expect(challenge_instance.acs_url).to eq('https://acs.example.com')
    expect(challenge_instance.creq).to eq('creqdata')
    expect(challenge_instance.merchantid).to eq(123)
    expect(challenge_instance.threedserver_trans_id).to eq('abc123')
    expect(challenge_instance.transno).to eq(99)
  end

  it 'updates fields properly' do
    challenge_instance.acs_url = 'https://acs.example.org'
    challenge_instance.creq = 'updated'
    challenge_instance.merchantid = 456
    challenge_instance.threedserver_trans_id = 'xyz789'
    challenge_instance.transno = 100

    expect(challenge_instance.acs_url).to eq('https://acs.example.org')
    expect(challenge_instance.creq).to eq('updated')
    expect(challenge_instance.merchantid).to eq(456)
    expect(challenge_instance.threedserver_trans_id).to eq('xyz789')
    expect(challenge_instance.transno).to eq(100)
  end

  it 'serializes and deserializes through JSON' do
    json = challenge_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(challenge_instance)
  end
end
