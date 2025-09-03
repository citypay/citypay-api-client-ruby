require 'json'
require 'citypay_api_client/models/account_status'

RSpec.describe CityPayApiClient::AccountStatus do
  let(:fake_data) { { status: 'ACTIVE' } }
  let(:model_instance) { described_class.new(fake_data) }

  it 'creates the object with given status' do
    expect(model_instance.status).to eq('ACTIVE')
  end

  it 'updates attributes correctly' do
    model_instance.status = 'DISABLED'
    expect(model_instance.status).to eq('DISABLED')
  end

  it 'round trips JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
