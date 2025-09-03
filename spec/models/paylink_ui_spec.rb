require 'json'
require 'citypay_api_client/models/paylink_ui'

RSpec.describe CityPayApiClient::PaylinkUI do
  let(:fake_data) do
    {
      address_mandatory: true,
      form_auto_complete: 'off',
      ordering: 1,
      postcode_mandatory: true
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'loads initial values' do
    expect(model.address_mandatory).to eq(true)
    expect(model.form_auto_complete).to eq('off')
    expect(model.ordering).to eq(1)
    expect(model.postcode_mandatory).to eq(true)
  end

  it 'updates via setters' do
    model.address_mandatory = false
    model.form_auto_complete = 'on'
    model.ordering = 2
    model.postcode_mandatory = false

    expect(model.address_mandatory).to eq(false)
    expect(model.form_auto_complete).to eq('on')
    expect(model.ordering).to eq(2)
    expect(model.postcode_mandatory).to eq(false)
  end

  it 'converts to and from JSON properly' do
    json = model.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(model)
  end
end
