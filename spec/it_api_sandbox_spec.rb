require 'spec_helper'
require 'json'
require 'date'
require 'securerandom'


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
    end
    cha_api = CityPayApiClient::CardHolderAccountApi.new
  end

  after do
    # eun after each test
  end

  describe 'Can run operational tests' do
    api_instance = CityPayApiClient::OperationalApi.new

    it 'should ping and ack' do
      uuid = SecureRandom.uuid
      result = api_instance.ping_request(CityPayApiClient::Ping.new(identifier:  uuid))
      expect(result.code == "044")
      expect(result.identifier == uuid)
    end

    it 'should list merchants' do
      result = api_instance.list_merchants_request("default")
      expect(result.clientid == client_id)
    end

  end

  describe 'Run payment processing tests' do
    api_instance = CityPayApiClient::PaymentProcessingApi.new

    it 'should authorise' do
      uuid = SecureRandom.uuid
      result = api_instance.authorisation_request(CityPayApiClient::AuthRequest.new(
          merchantid: merchant_id,
          cardnumber: "4000000000000002",
          csc: "012",
          expmonth: 12,
          expyear: 2030,
          amount: 1395,
          identifier: uuid
      ))

      expect(result.auth_response).to_not be_nil
      expect(result.authen_required).to be_nil
      expect(result.request_challenged).to be_nil

      response = result.auth_response

      expect(response.identifier == uuid.to_str)
      expect(response.authcode == "A12345")
      expect(response.amount == 1395)
      expect(response.result_code == "001")
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

      expect(result.account_id == cha_id)
      expect(result.contact.address1 == "7 Esplanade")

    end

    it 'should add a card to the account' do
      result = api_instance.account_card_register_request(cha_id, CityPayApiClient::RegisterCard.new(
          cardnumber: "4000000000000002",
          expmonth: 12,
          expyear: 2030,
      ))
      expect(result.account_id == cha_id)
      expect(result.cards.length == 1)
      expect(result.cards[0].expmonth == 12)
      expect(result.cards[0].expyear == 2030)

    end

    it 'should retrieve the account and charge against it' do
      result = api_instance.account_retrieve_request(cha_id)
      expect(result.account_id == cha_id)
      expect(result.contact.address1 == "7 Esplanade")
      expect(result.cards.length == 1)
      expect(result.cards[0].expmonth == 12)
      expect(result.cards[0].expyear == 2030)

      uuid = SecureRandom.uuid
      result2 = api_instance.charge_request(CityPayApiClient::ChargeRequest.new(
          amount: 7801,
          csc: "012",
          merchantid: merchant_id,
          identifier: uuid,
          token: result.cards[0].token
      ))

      # decision object returned
      expect(result2.auth_response).to_not be_nil
      expect(result2.authen_required).to be_nil
      expect(result2.request_challenged).to be_nil

      response = result2.auth_response

      expect(response.identifier == uuid.to_str)
      expect(response.authcode == "A12345")
      expect(response.amount == 1395)
      expect(response.result_code == "001")

    end


    it 'should delete the cha' do

      result = api_instance.account_delete_request(cha_id)

    end

  end


end
