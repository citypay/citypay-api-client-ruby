require 'json'
require 'citypay_api_client/models/paylink_state_event'

RSpec.describe CityPayApiClient::PaylinkStateEvent do
  let(:fake_data) do
    {
      datetime: Time.utc(2020, 1, 1, 12, 0, 0),
      message: 'start',
      state: 'created'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes all attributes' do
    expect(model.datetime).to eq(Time.utc(2020, 1, 1, 12, 0, 0))
    expect(model.message).to eq('start')
    expect(model.state).to eq('created')
  end

  it 'allows attribute updates' do
    new_time = Time.utc(2021, 2, 2, 13, 0, 0)
    model.datetime = new_time
    model.message = 'done'
    model.state = 'completed'
    expect(model.datetime).to eq(new_time)
    expect(model.message).to eq('done')
    expect(model.state).to eq('completed')
  end

  it 'round trips JSON faithfully' do
    json = model.to_hash.to_json
    restored = described_class.build_from_hash(JSON.parse(json))
    expect(restored).to eq(model)
  end
end
