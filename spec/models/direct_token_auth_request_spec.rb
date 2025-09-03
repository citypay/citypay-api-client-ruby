require 'json'
require 'citypay_api_client/models/direct_token_auth_request'

RSpec.describe CityPayApiClient::DirectTokenAuthRequest do
  let(:fake_data) do
    {
      nonce: 'nonce1',
      redirect_failure: 'http://fail',
      redirect_success: 'http://ok',
      token: 'tok1'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.nonce).to eq('nonce1')
    expect(model_instance.token).to eq('tok1')
  end

  it 'allows setters and getters' do
    model_instance.nonce = 'nonce2'
    model_instance.redirect_failure = 'http://fail2'
    model_instance.redirect_success = 'http://ok2'
    model_instance.token = 'tok2'
    expect(model_instance.nonce).to eq('nonce2')
    expect(model_instance.redirect_failure).to eq('http://fail2')
    expect(model_instance.redirect_success).to eq('http://ok2')
    expect(model_instance.token).to eq('tok2')
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
