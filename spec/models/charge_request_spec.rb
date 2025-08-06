require 'json'
require 'citypay_api_client/models/charge_request'
require 'citypay_api_client/models/three_d_secure'

RSpec.describe CityPayApiClient::ChargeRequest do
  let(:fake_3ds) { CityPayApiClient::ThreeDSecure.new(tds_policy: '1') }
  let(:fake_data) do
    {
      amount: 100,
      avs_postcode_policy: '1',
      cardholder_agreement: 'Y',
      csc: '123',
      csc_policy: '1',
      currency: 'GBP',
      duplicate_policy: '1',
      identifier: 'IDNT1',
      initiation: 'C',
      match_avsa: '1',
      merchantid: 1000,
      tag: ['t1'],
      threedsecure: fake_3ds,
      token: 'tok',
      trans_info: 'info',
      trans_type: '1'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.amount).to eq(100)
    expect(model_instance.threedsecure).to eq(fake_3ds)
  end

  it 'allows setters and getters' do
    new_3ds = CityPayApiClient::ThreeDSecure.new(tds_policy: '2')
    model_instance.amount = 200
    model_instance.avs_postcode_policy = '2'
    model_instance.cardholder_agreement = 'N'
    model_instance.csc = '999'
    model_instance.csc_policy = '2'
    model_instance.currency = 'USD'
    model_instance.duplicate_policy = '2'
    model_instance.identifier = 'IDNT2'
    model_instance.initiation = 'M'
    model_instance.match_avsa = '2'
    model_instance.merchantid = 2000
    model_instance.tag = ['t2']
    model_instance.threedsecure = new_3ds
    model_instance.token = 'tok2'
    model_instance.trans_info = 'info2'
    model_instance.trans_type = '2'
    expect(model_instance.amount).to eq(200)
    expect(model_instance.avs_postcode_policy).to eq('2')
    expect(model_instance.cardholder_agreement).to eq('N')
    expect(model_instance.csc).to eq('999')
    expect(model_instance.csc_policy).to eq('2')
    expect(model_instance.currency).to eq('USD')
    expect(model_instance.duplicate_policy).to eq('2')
    expect(model_instance.identifier).to eq('IDNT2')
    expect(model_instance.initiation).to eq('M')
    expect(model_instance.match_avsa).to eq('2')
    expect(model_instance.merchantid).to eq(2000)
    expect(model_instance.tag).to eq(['t2'])
    expect(model_instance.threedsecure).to eq(new_3ds)
    expect(model_instance.token).to eq('tok2')
    expect(model_instance.trans_info).to eq('info2')
    expect(model_instance.trans_type).to eq('2')
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
