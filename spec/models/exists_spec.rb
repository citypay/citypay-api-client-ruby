require 'json'
require 'time'
require 'citypay_api_client/models/exists'

RSpec.describe CityPayApiClient::Exists do
  let(:fake_data) do
    {
      active: true,
      exists: true,
      last_modified: Time.utc(2023, 1, 1, 12, 0, 0)
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'builds with given attributes' do
    expect(model.active).to eq(true)
    expect(model.exists).to eq(true)
    expect(model.last_modified).to eq(Time.utc(2023, 1, 1, 12, 0, 0))
  end

  it 'modifies each attribute correctly' do
    model.active = false
    model.exists = false
    model.last_modified = Time.utc(2024, 2, 2, 0, 0, 0)
    expect(model.active).to eq(false)
    expect(model.exists).to eq(false)
    expect(model.last_modified).to eq(Time.utc(2024, 2, 2, 0, 0, 0))
  end

  it 'serializes to JSON and back' do
    json = model.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model)
  end
end
