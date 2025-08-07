require 'json'
require 'citypay_api_client/models/void_request'

RSpec.describe CityPayApiClient::VoidRequest do
  let(:void_data) { { identifier: 'VOID1', merchantid: 123, transno: 456 } }
  let(:void_instance) { described_class.new(void_data) }

  it 'creates an instance with attributes' do
    expect(void_instance.identifier).to eq('VOID1')
    expect(void_instance.merchantid).to eq(123)
    expect(void_instance.transno).to eq(456)
  end

  it 'modifies attributes correctly' do
    void_instance.identifier = 'VOID2'
    void_instance.merchantid = 321
    void_instance.transno = 654
    expect(void_instance.identifier).to eq('VOID2')
    expect(void_instance.merchantid).to eq(321)
    expect(void_instance.transno).to eq(654)
  end

  it 'serializes and deserializes through JSON' do
    json = void_instance.to_hash.to_json
    rebuilt = described_class.build_from_hash(JSON.parse(json))
    expect(rebuilt).to eq(void_instance)
  end
end
