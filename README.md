# CityPay API Client for Ruby

CityPayApiClient - the Ruby gem for the CityPay Payment API
[![Build Status](https://travis-ci.org/citypay/citypay-api-client-ruby.svg?branch=master)](https://travis-ci.org/citypay/citypay-api-client-ruby)


This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It
provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing,
3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and
Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.

## Compliance and Security
<aside class=\"notice\">
  Before we begin a reminder that your application will need to adhere to PCI-DSS standards to operate safely
  and to meet requirements set out by Visa and MasterCard and the PCI Security Standards Council including:
</aside>

* Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at
  lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments
  as part of our compliance program.
* The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or
  primary access number (PAN)
* The application must not display the full card number on receipts, it is recommended to mask the PAN
  and show the last 4 digits. The API will return this for you for ease of receipt creation
* If you are developing a website, you will be required to perform regular scans on the network where you host the
  application to meet your compliance obligations
* You will be required to be PCI Compliant and the application must adhere to the security standard. Further information
  is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/)
* The API verifies that the request is for a valid account and originates from a trusted source using the remote IP
  address. Our application firewalls analyse data that may be an attempt to break a large number of security common
  security vulnerabilities.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 6.0.4
- Package version: 1.0.3
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://citypay.com/customer-centre/technical-support.html](https://citypay.com/customer-centre/technical-support.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build citypay_api_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./citypay_api_client-1.0.3.gem
```

(for development, run `gem install --dev ./citypay_api_client-1.0.3.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'citypay_api_client', '~> 1.0.3'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/citypay/citypay-api-client-ruby, then add the following in the Gemfile:

    gem 'citypay_api_client', :git => 'https://github.com/citypay/citypay-api-client-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'citypay_api_client'

# Setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.
card_id = 'card_id_example' # String | The id of the card that is presented by a call to retrieve a card holder account.

begin
  #Card Deletion
  result = api_instance.account_card_delete_request(accountid, card_id)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Exception when calling CardHolderAccountApi->account_card_delete_request: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.citypay.com/v6*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CityPayApiClient::CardHolderAccountApi* | [**account_card_delete_request**](docs/CardHolderAccountApi.md#account_card_delete_request) | **DELETE** /account/{accountid}/card/{cardId} | Card Deletion
*CityPayApiClient::CardHolderAccountApi* | [**account_card_register_request**](docs/CardHolderAccountApi.md#account_card_register_request) | **POST** /account/{accountid}/register | Card Registration
*CityPayApiClient::CardHolderAccountApi* | [**account_card_status_request**](docs/CardHolderAccountApi.md#account_card_status_request) | **POST** /account/{accountid}/card/{cardId}/status | Card Status
*CityPayApiClient::CardHolderAccountApi* | [**account_change_contact_request**](docs/CardHolderAccountApi.md#account_change_contact_request) | **POST** /account/{accountid}/contact | Contact Details Update
*CityPayApiClient::CardHolderAccountApi* | [**account_create**](docs/CardHolderAccountApi.md#account_create) | **POST** /account/create | Account Create
*CityPayApiClient::CardHolderAccountApi* | [**account_delete_request**](docs/CardHolderAccountApi.md#account_delete_request) | **DELETE** /account/{accountid} | Account Deletion
*CityPayApiClient::CardHolderAccountApi* | [**account_retrieve_request**](docs/CardHolderAccountApi.md#account_retrieve_request) | **GET** /account/{accountid} | Account Retrieval
*CityPayApiClient::CardHolderAccountApi* | [**account_status_request**](docs/CardHolderAccountApi.md#account_status_request) | **POST** /account/{accountid}/status | Account Status
*CityPayApiClient::CardHolderAccountApi* | [**charge_request**](docs/CardHolderAccountApi.md#charge_request) | **POST** /charge | Charge
*CityPayApiClient::OperationalApi* | [**list_merchants_request**](docs/OperationalApi.md#list_merchants_request) | **GET** /merchants/{clientid} | List Merchants Request
*CityPayApiClient::OperationalApi* | [**ping_request**](docs/OperationalApi.md#ping_request) | **POST** /ping | Ping Request
*CityPayApiClient::PaymentProcessingApi* | [**authorisation_request**](docs/PaymentProcessingApi.md#authorisation_request) | **POST** /authorise | Authorisation
*CityPayApiClient::PaymentProcessingApi* | [**c_res_request**](docs/PaymentProcessingApi.md#c_res_request) | **POST** /cres | CRes
*CityPayApiClient::PaymentProcessingApi* | [**capture_request**](docs/PaymentProcessingApi.md#capture_request) | **POST** /capture | Capture
*CityPayApiClient::PaymentProcessingApi* | [**pa_res_request**](docs/PaymentProcessingApi.md#pa_res_request) | **POST** /pares | PaRes
*CityPayApiClient::PaymentProcessingApi* | [**retrieval_request**](docs/PaymentProcessingApi.md#retrieval_request) | **POST** /retrieve | Retrieval
*CityPayApiClient::PaymentProcessingApi* | [**void_request**](docs/PaymentProcessingApi.md#void_request) | **POST** /void | Void


## Documentation for Models

 - [CityPayApiClient::AccountCreate](docs/AccountCreate.md)
 - [CityPayApiClient::AccountStatus](docs/AccountStatus.md)
 - [CityPayApiClient::Acknowledgement](docs/Acknowledgement.md)
 - [CityPayApiClient::AirlineAdvice](docs/AirlineAdvice.md)
 - [CityPayApiClient::AirlineSegment](docs/AirlineSegment.md)
 - [CityPayApiClient::AuthReference](docs/AuthReference.md)
 - [CityPayApiClient::AuthReferences](docs/AuthReferences.md)
 - [CityPayApiClient::AuthRequest](docs/AuthRequest.md)
 - [CityPayApiClient::AuthResponse](docs/AuthResponse.md)
 - [CityPayApiClient::AuthenRequired](docs/AuthenRequired.md)
 - [CityPayApiClient::CResAuthRequest](docs/CResAuthRequest.md)
 - [CityPayApiClient::CaptureRequest](docs/CaptureRequest.md)
 - [CityPayApiClient::Card](docs/Card.md)
 - [CityPayApiClient::CardHolderAccount](docs/CardHolderAccount.md)
 - [CityPayApiClient::CardStatus](docs/CardStatus.md)
 - [CityPayApiClient::ChargeRequest](docs/ChargeRequest.md)
 - [CityPayApiClient::ContactDetails](docs/ContactDetails.md)
 - [CityPayApiClient::Decision](docs/Decision.md)
 - [CityPayApiClient::Error](docs/Error.md)
 - [CityPayApiClient::ExternalMPI](docs/ExternalMPI.md)
 - [CityPayApiClient::ListMerchantsResponse](docs/ListMerchantsResponse.md)
 - [CityPayApiClient::MCC6012](docs/MCC6012.md)
 - [CityPayApiClient::Merchant](docs/Merchant.md)
 - [CityPayApiClient::PaResAuthRequest](docs/PaResAuthRequest.md)
 - [CityPayApiClient::Ping](docs/Ping.md)
 - [CityPayApiClient::RegisterCard](docs/RegisterCard.md)
 - [CityPayApiClient::RequestChallenged](docs/RequestChallenged.md)
 - [CityPayApiClient::RetrieveRequest](docs/RetrieveRequest.md)
 - [CityPayApiClient::ThreeDSecure](docs/ThreeDSecure.md)
 - [CityPayApiClient::VoidRequest](docs/VoidRequest.md)


## Documentation for Authorization


### cp-api-key


- **Type**: API key
- **API key parameter name**: cp-api-key
- **Location**: HTTP header

