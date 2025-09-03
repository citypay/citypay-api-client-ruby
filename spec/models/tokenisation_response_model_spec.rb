require 'json'
require 'citypay_api_client/models/tokenisation_response_model'

RSpec.describe CityPayApiClient::TokenisationResponseModel do
  let(:token_resp_data) do
    {
      authen_result: 'Y',
      bin_commercial: true,
      bin_debit: false,
      bin_description: 'Corporate',
      eci: '05',
      identifier: 'ID1234',
      maskedpan: '411111******1111',
      scheme: 'VISA',
      sig_id: 'sig',
      token: 'token123'
    }
  end
  let(:token_resp_instance) { described_class.new(token_resp_data) }

  it 'initializes with attributes' do
    expect(token_resp_instance.authen_result).to eq('Y')
    expect(token_resp_instance.bin_commercial).to eq(true)
    expect(token_resp_instance.bin_debit).to eq(false)
    expect(token_resp_instance.identifier).to eq('ID1234')
    expect(token_resp_instance.token).to eq('token123')
  end

  it 'updates attributes properly' do
    token_resp_instance.authen_result = 'N'
    token_resp_instance.bin_commercial = false
    token_resp_instance.bin_debit = true
    token_resp_instance.identifier = 'ID9999'
    token_resp_instance.token = 'tokenXYZ'

    expect(token_resp_instance.authen_result).to eq('N')
    expect(token_resp_instance.bin_commercial).to eq(false)
    expect(token_resp_instance.bin_debit).to eq(true)
    expect(token_resp_instance.identifier).to eq('ID9999')
    expect(token_resp_instance.token).to eq('tokenXYZ')
  end

  it 'serializes and deserializes correctly' do
    json = token_resp_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(token_resp_instance)
  end
end
