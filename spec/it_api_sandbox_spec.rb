require 'spec_helper'
require 'json'
require 'date'
require 'securerandom'
require 'typhoeus'
require 'base64'
require_relative '../lib/citypay_api_client/utils/digest_utils'

describe 'IntegrationTests' do

  client_id = ENV['CP_CLIENT_ID']
  licence_key = ENV['CP_LICENCE_KEY']
  merchant_id = ENV['CP_MERCHANT_ID']

  before do

    # for each test
    CityPayApiClient.configure do |config|
      config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: client_id, licence_key: licence_key).generate
      config.debugging = true
      config.host = "sandbox.citypay.com"
      config.server_index = 1
    end
    cha_api = CityPayApiClient::CardHolderAccountApi.new
  end

  after do
    # eun after each test
  end

  describe 'Can run operational tests' do
    api_instance = CityPayApiClient::OperationalFunctionsApi.new

    it 'should ping and ack' do
      uuid = SecureRandom.uuid
      result = api_instance.ping_request(CityPayApiClient::Ping.new(identifier:  uuid))
      expect(result.code).to eq("044")
      expect(result.identifier).to eq(uuid)
    end

    it 'should list merchants' do
      result = api_instance.list_merchants_request("default")
      expect(result.clientid ).to eq(client_id)
    end

  end

  describe 'Run payment processing tests' do
    api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new

    it 'should authorise' do
      uuid = SecureRandom.uuid
      result = api_instance.authorisation_request(CityPayApiClient::AuthRequest.new(
        merchantid: merchant_id,
        cardnumber: "4000000000000002",
        csc: "012",
        expmonth: 12,
        expyear: 2030,
        amount: 1395,
        identifier: uuid,
        threedsecure: CityPayApiClient::ThreeDSecure.new(tds_policy: "2")
      ))

      expect(result.auth_response).to_not be_nil
      expect(result.authen_required).to be_nil
      expect(result.request_challenged).to be_nil

      response = result.auth_response

      expect(response.identifier).to eq(uuid.to_str)
      expect(response.authcode).to eq("A12345")
      expect(response.amount).to eq(1395)
      expect(response.result_code).to eq("001")

      expect(DigestUtils.validate_digest(response, licence_key)).to eq(true)
    end

  end

  describe 'Run payment processing tests 3DSv2' do
    api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new

    it 'should authorise 3DSv2' do
      uuid = SecureRandom.uuid
      result = api_instance.authorisation_request(CityPayApiClient::AuthRequest.new(
        merchantid: merchant_id,
        cardnumber: "4000000000000002",
        csc: "123",
        expmonth: 12,
        expyear: 2030,
        amount: 1396,
        identifier: uuid,
        trans_type: "A",
        threedsecure: CityPayApiClient::ThreeDSecure.new(
          cp_bx: "eyJhIjoiRkFwSCIsImMiOjI0LCJpIjoid3dIOTExTlBKSkdBRVhVZCIsImoiOmZhbHNlLCJsIjoiZW4tVVMiLCJoIjoxNDQwLCJ3IjoyNTYwLCJ0IjowLCJ1IjoiTW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTFfMl8zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvODkuMC40Mzg5LjgyIFNhZmFyaS81MzcuMzYiLCJ2IjoiMS4wLjAifQ",
          merchant_termurl: "https://citypay.com/acs/return"
        )
      ))

      expect(result.auth_response).to be_nil
      expect(result.authen_required).to be_nil
      expect(result.request_challenged).to_not be_nil

      response = result.request_challenged

      expect(response.acs_url).to_not be_nil
      expect(response.creq).to_not be_nil
      expect(response.threedserver_trans_id).to_not be_nil

      content = {
        :threeDSSessionData => response.threedserver_trans_id,
        :creq => response.creq
      }

      request = Typhoeus::Request.new("https://sandbox.citypay.com/3dsv2/acs",
                                       method: :post,
                                       headers: {
                                         "Content-Type" => "application/json"
                                       },
                                       body: content.to_json)
      res = request.run
      c_res = res.response_body

      expect(c_res['acsTransID']).to_not be_nil
      expect(c_res['messageType']).to_not be_nil
      expect(c_res['messageVersion']).to_not be_nil
      expect(c_res['threeDSServerTransID']).to_not be_nil
      expect(c_res['transStatus']).to_not be_nil

      c_res_auth_request = CityPayApiClient::CResAuthRequest.new({:cres => Base64.encode64(c_res)})

      c_res_request_response =  api_instance.c_res_request(c_res_auth_request)

      expect(c_res_request_response.amount).to eq(1396)
      expect(c_res_request_response.authcode).to eq("A12345")
      expect(c_res_request_response.authen_result).to eq("Y")
      expect(c_res_request_response.authorised).to eq(true)
    end

  end

  describe 'Run card holder account actions' do

    api_instance = CityPayApiClient::CardHolderAccountApi.new
    cha_id = SecureRandom.hex(12)

    it 'should create a new cha' do

      result = api_instance.account_create(CityPayApiClient::AccountCreate.new(
        account_id: cha_id,
        contact: CityPayApiClient::ContactDetails.new(
          address1: "7 Esplanade",
          area: "St Helier",
          company: "CityPay Limited",
          country: "JE",
          email: "dev@citypay.com",
          firstname: "Integration",
          lastname: "Test",
          postcode: "JE2 3QA"
        )
      ))

      expect(result.account_id).to eq(cha_id)
      expect(result.contact.address1).to eq("7 Esplanade")

    end

    it 'should add a card to the account' do
      result = api_instance.account_card_register_request(cha_id, CityPayApiClient::RegisterCard.new(
        cardnumber: "4000000000000002",
        expmonth: 12,
        expyear: 2030,
        ))
      expect(result.account_id).to eq(cha_id)
      expect(result.cards.length).to eq(1)
      expect(result.cards[0].expmonth).to eq(12)
      expect(result.cards[0].expyear).to eq(2030)

    end

    it 'should retrieve the account and charge against it' do
      result = api_instance.account_retrieve_request(cha_id)
      expect(result.account_id).to eq(cha_id)
      expect(result.contact.address1).to eq("7 Esplanade")
      expect(result.cards.length).to eq(1)
      expect(result.cards[0].expmonth).to eq(12)
      expect(result.cards[0].expyear).to eq(2030)

      uuid = SecureRandom.uuid
      result2 = api_instance.charge_request(CityPayApiClient::ChargeRequest.new(
        amount: 7801,
        csc: "012",
        merchantid: merchant_id,
        identifier: uuid,
        threedsecure: CityPayApiClient::ThreeDSecure.new(tds_policy: "2"),
        token: result.cards[0].token
      ))

      # decision object returned
      expect(result2.auth_response).to_not be_nil
      expect(result2.authen_required).to be_nil
      expect(result2.request_challenged).to be_nil

      response = result2.auth_response

      expect(response.identifier).to eq(uuid.to_str)
      expect(response.authcode).to eq("A12345")
      expect(response.amount).to eq(7801)
      expect(response.result_code).to eq("001")

    end


    it 'should delete the cha' do

      result = api_instance.account_delete_request(cha_id)
      expect(result.code).to eq("001")
    end

  end

end
