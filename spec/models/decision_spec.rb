require 'json'
require 'citypay_api_client/models/decision'
require 'citypay_api_client/models/auth_response'
require 'citypay_api_client/models/request_challenged'

RSpec.describe CityPayApiClient::Decision do
  let(:fake_auth) { CityPayApiClient::AuthResponse.new(authcode: 'A1', identifier: 'ID1') }
  let(:fake_req) { CityPayApiClient::RequestChallenged.new(acs_url: 'url', creq: 'c1') }
  let(:fake_data) { { auth_response: fake_auth, request_challenged: fake_req } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.auth_response).to eq(fake_auth)
    expect(model_instance.request_challenged).to eq(fake_req)
  end

  it 'allows setters and getters' do
    new_auth = CityPayApiClient::AuthResponse.new(authcode: 'B2', identifier: 'ID2')
    new_req = CityPayApiClient::RequestChallenged.new(acs_url: 'url2', creq: 'c2')
    model_instance.auth_response = new_auth
    model_instance.request_challenged = new_req
    expect(model_instance.auth_response).to eq(new_auth)
    expect(model_instance.request_challenged).to eq(new_req)
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
