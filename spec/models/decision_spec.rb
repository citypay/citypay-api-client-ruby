=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security <aside class=\"notice\">   Before we begin a reminder that your application will need to adhere to PCI-DSS standards to operate safely   and to meet requirements set out by Visa and MasterCard and the PCI Security Standards Council including: </aside>  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CityPayApiClient::Decision
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Decision' do
  before do
    # run before each test
    @instance = CityPayApiClient::Decision.new
  end

  after do
    # run after each test
  end

  def convert_decision(json)
    data = JSON.parse(json, :symbolize_names => true)
    CityPayApiClient::ApiClient.new.convert_to_type(data, "Decision")

  end

  describe 'test an instance of Decision' do
    it 'should create an instance of Decision' do
      expect(@instance).to be_instance_of(CityPayApiClient::Decision)
    end
  end

  describe 'test attribute "challenge"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "result"' do
    it 'should work' do
      decision = convert_decision '
{
    "AuthResponse": {
        "amount": 5500,
        "atrn": "atrn1",
        "atsd": "a",
        "authcode": "12345",
        "authen_result": "R",
        "authorised": true,
        "avs_result": "G",
        "bin_commercial": false,
        "bin_debit": false,
        "bin_description": "bin_desc",
        "cavv": "cavvvvvvvvvvvvv",
        "context": "20200812075906AAAGV4",
        "csc_result": "C",
        "currency": "GBP",
        "datetime": "2020-08-12T07:59:11Z",
        "eci": "0",
        "identifier": "ident1",
        "live": true,
        "maskedpan": "400000******0002",
        "merchantid": 12345,
        "result": 1,
        "result_code": "000",
        "result_message": "System: Accepted Transaction",
        "scheme": "VISA_BUSINESS",
        "sha256": "abcdefg",
        "trans_status": "P",
        "transno": 74875
    }
}
'
      expect(decision.auth_response).to be_truthy
      expect(decision.request_challenged).to be_nil
      expect(decision.authen_required).to be_nil

      response = decision.auth_response

      expect(response).to be_instance_of(CityPayApiClient::AuthResponse)
      expect(response.amount).to eq(5500)
      expect(response.atrn).to eq("atrn1")
      expect(response.atsd).to eq("a")
      expect(response.authcode).to eq("12345")
      expect(response.authen_result).to eq("R")
      expect(response.authorised).to eq(true)
      expect(response.avs_result).to eq("G")
      expect(response.bin_commercial).to eq(false)
      expect(response.bin_debit).to eq(false)
      expect(response.bin_description).to eq("bin_desc")
      expect(response.cavv).to eq("cavvvvvvvvvvvvv")
      expect(response.context).to eq("20200812075906AAAGV4")
      expect(response.csc_result).to eq("C")
      expect(response.currency).to eq("GBP")
      expect(response.datetime).to eq(Time.parse("2020-08-12T07:59:11Z"))
      expect(response.eci).to eq("0")
      expect(response.identifier).to eq("ident1")
      expect(response.live).to eq(true)
      expect(response.maskedpan).to eq("400000******0002")
      expect(response.merchantid).to eq(12345)
      expect(response.result).to eq(1)
      expect(response.result_code).to eq("000")
      expect(response.result_message).to eq("System: Accepted Transaction")
      expect(response.scheme).to eq("VISA_BUSINESS")
      expect(response.sha256).to eq("abcdefg")
      expect(response.trans_status).to eq("P")
      expect(response.transno).to eq(74875)
    end
  end

end
