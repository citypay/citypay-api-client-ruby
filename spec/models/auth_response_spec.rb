require 'json'
require 'time'
require 'citypay_api_client/models/auth_response'

RSpec.describe CityPayApiClient::AuthResponse do
  let(:fake_time) { Time.utc(2022,1,1,12,0,0) }
  let(:fake_data) do
    {
      amount: 1000,
      atrn: 'ATRN',
      atsd: 'ATSD',
      authcode: 'AC',
      authen_result: 'A',
      authorised: true,
      avs_result: 'Y',
      bin_commercial: true,
      bin_debit: true,
      bin_description: 'DESC',
      cavv: 'CAVV',
      context: 'CTX',
      csc_result: 'M',
      currency: 'USD',
      datetime: fake_time,
      eci: '05',
      identifier: 'ID123',
      live: true,
      maskedpan: '411111******1111',
      merchantid: 123,
      result: 1,
      result_code: 'A',
      result_message: 'Approved',
      scheme: 'VISA',
      scheme_id: 'ID',
      scheme_logo: 'logo',
      sha256: 'hash',
      trans_status: 'C',
      transno: 999
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'creates object with all attributes' do
    expect(model_instance.amount).to eq(1000)
    expect(model_instance.maskedpan).to eq('411111******1111')
  end

  it 'updates and reads back each field' do
    model_instance.amount = 2000
    model_instance.atrn = 'ATRN2'
    model_instance.atsd = 'ATSD2'
    model_instance.authcode = 'CD'
    model_instance.authen_result = 'B'
    model_instance.authorised = false
    model_instance.avs_result = 'N'
    model_instance.bin_commercial = false
    model_instance.bin_debit = false
    model_instance.bin_description = 'DESC2'
    model_instance.cavv = 'CAVV2'
    model_instance.context = 'CTX2'
    model_instance.csc_result = 'N'
    model_instance.currency = 'GBP'
    model_instance.datetime = fake_time + 60
    model_instance.eci = '07'
    model_instance.identifier = 'ID2'
    model_instance.live = false
    model_instance.maskedpan = '400000******0002'
    model_instance.merchantid = 321
    model_instance.result = 2
    model_instance.result_code = 'B'
    model_instance.result_message = 'Declined'
    model_instance.scheme = 'MC'
    model_instance.scheme_id = 'ID2'
    model_instance.scheme_logo = 'logo2'
    model_instance.sha256 = 'hash2'
    model_instance.trans_status = 'D'
    model_instance.transno = 1000
    expect(model_instance.amount).to eq(2000)
    expect(model_instance.atrn).to eq('ATRN2')
    expect(model_instance.atsd).to eq('ATSD2')
    expect(model_instance.authcode).to eq('CD')
    expect(model_instance.authen_result).to eq('B')
    expect(model_instance.authorised).to eq(false)
    expect(model_instance.avs_result).to eq('N')
    expect(model_instance.bin_commercial).to eq(false)
    expect(model_instance.bin_debit).to eq(false)
    expect(model_instance.bin_description).to eq('DESC2')
    expect(model_instance.cavv).to eq('CAVV2')
    expect(model_instance.context).to eq('CTX2')
    expect(model_instance.csc_result).to eq('N')
    expect(model_instance.currency).to eq('GBP')
    expect(model_instance.datetime).to eq(fake_time + 60)
    expect(model_instance.eci).to eq('07')
    expect(model_instance.identifier).to eq('ID2')
    expect(model_instance.live).to eq(false)
    expect(model_instance.maskedpan).to eq('400000******0002')
    expect(model_instance.merchantid).to eq(321)
    expect(model_instance.result).to eq(2)
    expect(model_instance.result_code).to eq('B')
    expect(model_instance.result_message).to eq('Declined')
    expect(model_instance.scheme).to eq('MC')
    expect(model_instance.scheme_id).to eq('ID2')
    expect(model_instance.scheme_logo).to eq('logo2')
    expect(model_instance.sha256).to eq('hash2')
    expect(model_instance.trans_status).to eq('D')
    expect(model_instance.transno).to eq(1000)
  end

  it 'serializes correctly with JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end

