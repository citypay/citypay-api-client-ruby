require 'json'
require 'citypay_api_client/models/paylink_config'
require 'citypay_api_client/models/paylink_custom_param'
require 'citypay_api_client/models/paylink_field_guard_model'
require 'citypay_api_client/models/paylink_part_payments'
require 'citypay_api_client/models/paylink_ui'

RSpec.describe CityPayApiClient::PaylinkConfig do
  let(:custom) { CityPayApiClient::PaylinkCustomParam.new(name: 'field1') }
  let(:guard) { CityPayApiClient::PaylinkFieldGuardModel.new(name: 'field1', field_type: 'text') }
  let(:parts) { CityPayApiClient::PaylinkPartPayments.new(enabled: true, floor: 100) }
  let(:ui_cfg) { CityPayApiClient::PaylinkUI.new(address_mandatory: true) }
  let(:fake_data) do
    {
      acs_mode: 'm1',
      custom_params: [custom],
      descriptor: 'desc',
      expire_in: 5,
      field_guard: [guard],
      lock_params: ['coupon'],
      merch_logo: 'logo.png',
      merch_terms: 'terms',
      options: ['op'],
      part_payments: parts,
      pass_through_data: { 'k' => 'v' },
      pass_through_headers: { 'h' => 'v' },
      postback: 'http://post',
      postback_password: 'pwd',
      postback_policy: 'all',
      postback_username: 'user',
      redirect_delay: 3,
      redirect_failure: 'http://fail',
      redirect_success: 'http://ok',
      renderer: 'html',
      return_params: true,
      ui: ui_cfg
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'initializes attributes properly' do
    expect(model.acs_mode).to eq('m1')
    expect(model.custom_params).to eq([custom])
    expect(model.descriptor).to eq('desc')
    expect(model.expire_in).to eq(5)
    expect(model.field_guard).to eq([guard])
    expect(model.lock_params).to eq(['coupon'])
    expect(model.merch_logo).to eq('logo.png')
    expect(model.merch_terms).to eq('terms')
    expect(model.options).to eq(['op'])
    expect(model.part_payments).to eq(parts)
    expect(model.pass_through_data).to eq('k' => 'v')
    expect(model.pass_through_headers).to eq('h' => 'v')
    expect(model.postback).to eq('http://post')
    expect(model.postback_password).to eq('pwd')
    expect(model.postback_policy).to eq('all')
    expect(model.postback_username).to eq('user')
    expect(model.redirect_delay).to eq(3)
    expect(model.redirect_failure).to eq('http://fail')
    expect(model.redirect_success).to eq('http://ok')
    expect(model.renderer).to eq('html')
    expect(model.return_params).to eq(true)
    expect(model.ui).to eq(ui_cfg)
  end

  it 'mutates and retrieves fields' do
    new_custom = CityPayApiClient::PaylinkCustomParam.new(name: 'f2')
    new_guard = CityPayApiClient::PaylinkFieldGuardModel.new(name: 'f2', field_type: 'number')
    new_parts = CityPayApiClient::PaylinkPartPayments.new(enabled: false)
    new_ui = CityPayApiClient::PaylinkUI.new(address_mandatory: false)
    model.acs_mode = 'm2'
    model.custom_params = [new_custom]
    model.descriptor = 'desc2'
    model.expire_in = 10
    model.field_guard = [new_guard]
    model.lock_params = ['item']
    model.merch_logo = 'logo2.png'
    model.merch_terms = 't2'
    model.options = ['op2']
    model.part_payments = new_parts
    model.pass_through_data = { 'b' => 'c' }
    model.pass_through_headers = { 'x' => 'y' }
    model.postback = 'http://post2'
    model.postback_password = 'pwd2'
    model.postback_policy = 'none'
    model.postback_username = 'user2'
    model.redirect_delay = 6
    model.redirect_failure = 'http://fail2'
    model.redirect_success = 'http://ok2'
    model.renderer = 'json'
    model.return_params = false
    model.ui = new_ui

    expect(model.acs_mode).to eq('m2')
    expect(model.custom_params).to eq([new_custom])
    expect(model.descriptor).to eq('desc2')
    expect(model.expire_in).to eq(10)
    expect(model.field_guard).to eq([new_guard])
    expect(model.lock_params).to eq(['item'])
    expect(model.merch_logo).to eq('logo2.png')
    expect(model.merch_terms).to eq('t2')
    expect(model.options).to eq(['op2'])
    expect(model.part_payments).to eq(new_parts)
    expect(model.pass_through_data).to eq('b' => 'c')
    expect(model.pass_through_headers).to eq('x' => 'y')
    expect(model.postback).to eq('http://post2')
    expect(model.postback_password).to eq('pwd2')
    expect(model.postback_policy).to eq('none')
    expect(model.postback_username).to eq('user2')
    expect(model.redirect_delay).to eq(6)
    expect(model.redirect_failure).to eq('http://fail2')
    expect(model.redirect_success).to eq('http://ok2')
    expect(model.renderer).to eq('json')
    expect(model.return_params).to eq(false)
    expect(model.ui).to eq(new_ui)
  end

  it 'round trips JSON correctly' do
    json = model.to_hash.to_json
    recreated = described_class.build_from_hash(JSON.parse(json))
    expect(recreated).to eq(model)
  end
end
