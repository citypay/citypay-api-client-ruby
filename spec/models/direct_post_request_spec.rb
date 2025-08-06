require 'json'
require 'citypay_api_client/models/direct_post_request'
require 'citypay_api_client/models/contact_details'
require 'citypay_api_client/models/three_d_secure'

RSpec.describe CityPayApiClient::DirectPostRequest do
  let(:contact) { CityPayApiClient::ContactDetails.new(firstname: 'A') }
  let(:three_ds) { CityPayApiClient::ThreeDSecure.new(tds_policy: '1') }
  let(:fake_data) do
    {
      amount: 100,
      avs_postcode_policy: '1',
      bill_to: contact,
      cardnumber: '4111111111111111',
      csc: '123',
      csc_policy: '1',
      currency: 'GBP',
      duplicate_policy: '1',
      expmonth: 12,
      expyear: 2099,
      identifier: 'ID1',
      mac: 'mac1',
      match_avsa: '1',
      name_on_card: 'Test',
      nonce: 'nonce1',
      redirect_failure: 'http://fail',
      redirect_success: 'http://ok',
      ship_to: contact,
      tag: ['t1'],
      threedsecure: three_ds,
      trans_info: 'info',
      trans_type: 'SALE'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with provided attributes' do
    expect(model_instance.amount).to eq(100)
    expect(model_instance.cardnumber).to eq('4111111111111111')
  end

  it 'allows setters and getters' do
    new_contact = CityPayApiClient::ContactDetails.new(firstname: 'B')
    new_3ds = CityPayApiClient::ThreeDSecure.new(tds_policy: '2')
    model_instance.amount = 200
    model_instance.avs_postcode_policy = '2'
    model_instance.bill_to = new_contact
    model_instance.cardnumber = '4000000000000002'
    model_instance.csc = '999'
    model_instance.csc_policy = '2'
    model_instance.currency = 'USD'
    model_instance.duplicate_policy = '2'
    model_instance.expmonth = 11
    model_instance.expyear = 2100
    model_instance.identifier = 'ID2'
    model_instance.mac = 'mac2'
    model_instance.match_avsa = '2'
    model_instance.name_on_card = 'Changed'
    model_instance.nonce = 'nonce2'
    model_instance.redirect_failure = 'http://fail2'
    model_instance.redirect_success = 'http://ok2'
    model_instance.ship_to = new_contact
    model_instance.tag = ['t2']
    model_instance.threedsecure = new_3ds
    model_instance.trans_info = 'info2'
    model_instance.trans_type = 'AUTH'
    expect(model_instance.amount).to eq(200)
    expect(model_instance.avs_postcode_policy).to eq('2')
    expect(model_instance.bill_to).to eq(new_contact)
    expect(model_instance.cardnumber).to eq('4000000000000002')
    expect(model_instance.csc).to eq('999')
    expect(model_instance.csc_policy).to eq('2')
    expect(model_instance.currency).to eq('USD')
    expect(model_instance.duplicate_policy).to eq('2')
    expect(model_instance.expmonth).to eq(11)
    expect(model_instance.expyear).to eq(2100)
    expect(model_instance.identifier).to eq('ID2')
    expect(model_instance.mac).to eq('mac2')
    expect(model_instance.match_avsa).to eq('2')
    expect(model_instance.name_on_card).to eq('Changed')
    expect(model_instance.nonce).to eq('nonce2')
    expect(model_instance.redirect_failure).to eq('http://fail2')
    expect(model_instance.redirect_success).to eq('http://ok2')
    expect(model_instance.ship_to).to eq(new_contact)
    expect(model_instance.tag).to eq(['t2'])
    expect(model_instance.threedsecure).to eq(new_3ds)
    expect(model_instance.trans_info).to eq('info2')
    expect(model_instance.trans_type).to eq('AUTH')
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
