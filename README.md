# CityPay API Client for Ruby

CityPayApiClient - the Ruby gem for the CityPay Payment API
[![Build Status](https://api.travis-ci.com/citypay/citypay-api-client-ruby.svg?branch=master)](https://app.travis-ci.com/github/citypay/citypay-api-client-ruby)


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

- API version: 6.2.3
- Package version: 1.0.7
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
gem install ./citypay_api_client-1.0.7.gem
```

(for development, run `gem install --dev ./citypay_api_client-1.0.7.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'citypay_api_client', '~> 1.0.7'

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

api_instance = CityPayApiClient::BatchProcessingApi.new
process_batch_request = CityPayApiClient::ProcessBatchRequest.new({batch_date: Time.parse('2020-01-02T18:32:28Z'), batch_id: 1975, transactions: [CityPayApiClient::BatchTransaction.new({account_id: 'aaabbb-cccddd-eee', amount: 3600})]}) # ProcessBatchRequest | 

begin
  #Batch Process Request
  result = api_instance.batch_process_request(process_batch_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Exception when calling BatchProcessingApi->batch_process_request: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.citypay.com/v6*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CityPayApiClient::BatchProcessingApi* | [**batch_process_request**](docs/BatchProcessingApi.md#batch_process_request) | **POST** /batch/process | Batch Process Request
*CityPayApiClient::BatchProcessingApi* | [**check_batch_status_request**](docs/BatchProcessingApi.md#check_batch_status_request) | **POST** /batch/status | CheckBatchStatus
*CityPayApiClient::BatchProcessingApi* | [**get_batch_report_request**](docs/BatchProcessingApi.md#get_batch_report_request) | **POST** /batch/retrieve | BatchReportRequest
*CityPayApiClient::CardHolderAccountApi* | [**account_card_delete_request**](docs/CardHolderAccountApi.md#account_card_delete_request) | **DELETE** /account/{accountid}/card/{cardId} | Card Deletion
*CityPayApiClient::CardHolderAccountApi* | [**account_card_register_request**](docs/CardHolderAccountApi.md#account_card_register_request) | **POST** /account/{accountid}/register | Card Registration
*CityPayApiClient::CardHolderAccountApi* | [**account_card_status_request**](docs/CardHolderAccountApi.md#account_card_status_request) | **POST** /account/{accountid}/card/{cardId}/status | Card Status
*CityPayApiClient::CardHolderAccountApi* | [**account_change_contact_request**](docs/CardHolderAccountApi.md#account_change_contact_request) | **POST** /account/{accountid}/contact | Contact Details Update
*CityPayApiClient::CardHolderAccountApi* | [**account_create**](docs/CardHolderAccountApi.md#account_create) | **POST** /account/create | Account Create
*CityPayApiClient::CardHolderAccountApi* | [**account_delete_request**](docs/CardHolderAccountApi.md#account_delete_request) | **DELETE** /account/{accountid} | Account Deletion
*CityPayApiClient::CardHolderAccountApi* | [**account_exists_request**](docs/CardHolderAccountApi.md#account_exists_request) | **GET** /account-exists/{accountid} | Account Exists
*CityPayApiClient::CardHolderAccountApi* | [**account_retrieve_request**](docs/CardHolderAccountApi.md#account_retrieve_request) | **GET** /account/{accountid} | Account Retrieval
*CityPayApiClient::CardHolderAccountApi* | [**account_status_request**](docs/CardHolderAccountApi.md#account_status_request) | **POST** /account/{accountid}/status | Account Status
*CityPayApiClient::CardHolderAccountApi* | [**charge_request**](docs/CardHolderAccountApi.md#charge_request) | **POST** /charge | Charge
*CityPayApiClient::OperationalApi* | [**list_merchants_request**](docs/OperationalApi.md#list_merchants_request) | **GET** /merchants/{clientid} | List Merchants Request
*CityPayApiClient::OperationalApi* | [**ping_request**](docs/OperationalApi.md#ping_request) | **POST** /ping | Ping Request
*CityPayApiClient::PaymentProcessingApi* | [**authorisation_request**](docs/PaymentProcessingApi.md#authorisation_request) | **POST** /authorise | Authorisation
*CityPayApiClient::PaymentProcessingApi* | [**bin_range_lookup_request**](docs/PaymentProcessingApi.md#bin_range_lookup_request) | **POST** /bin | Bin Lookup
*CityPayApiClient::PaymentProcessingApi* | [**c_res_request**](docs/PaymentProcessingApi.md#c_res_request) | **POST** /cres | CRes
*CityPayApiClient::PaymentProcessingApi* | [**capture_request**](docs/PaymentProcessingApi.md#capture_request) | **POST** /capture | Capture
*CityPayApiClient::PaymentProcessingApi* | [**pa_res_request**](docs/PaymentProcessingApi.md#pa_res_request) | **POST** /pares | PaRes
*CityPayApiClient::PaymentProcessingApi* | [**refund_request**](docs/PaymentProcessingApi.md#refund_request) | **POST** /refund | Refund
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
 - [CityPayApiClient::BatchReportRequest](docs/BatchReportRequest.md)
 - [CityPayApiClient::BatchReportResponseModel](docs/BatchReportResponseModel.md)
 - [CityPayApiClient::BatchTransaction](docs/BatchTransaction.md)
 - [CityPayApiClient::BatchTransactionResultModel](docs/BatchTransactionResultModel.md)
 - [CityPayApiClient::Bin](docs/Bin.md)
 - [CityPayApiClient::BinLookup](docs/BinLookup.md)
 - [CityPayApiClient::CResAuthRequest](docs/CResAuthRequest.md)
 - [CityPayApiClient::CaptureRequest](docs/CaptureRequest.md)
 - [CityPayApiClient::Card](docs/Card.md)
 - [CityPayApiClient::CardHolderAccount](docs/CardHolderAccount.md)
 - [CityPayApiClient::CardStatus](docs/CardStatus.md)
 - [CityPayApiClient::ChargeRequest](docs/ChargeRequest.md)
 - [CityPayApiClient::CheckBatchStatus](docs/CheckBatchStatus.md)
 - [CityPayApiClient::CheckBatchStatusResponse](docs/CheckBatchStatusResponse.md)
 - [CityPayApiClient::ContactDetails](docs/ContactDetails.md)
 - [CityPayApiClient::Decision](docs/Decision.md)
 - [CityPayApiClient::Error](docs/Error.md)
 - [CityPayApiClient::Exists](docs/Exists.md)
 - [CityPayApiClient::ExternalMPI](docs/ExternalMPI.md)
 - [CityPayApiClient::ListMerchantsResponse](docs/ListMerchantsResponse.md)
 - [CityPayApiClient::MCC6012](docs/MCC6012.md)
 - [CityPayApiClient::Merchant](docs/Merchant.md)
 - [CityPayApiClient::PaResAuthRequest](docs/PaResAuthRequest.md)
 - [CityPayApiClient::Ping](docs/Ping.md)
 - [CityPayApiClient::ProcessBatchRequest](docs/ProcessBatchRequest.md)
 - [CityPayApiClient::ProcessBatchResponse](docs/ProcessBatchResponse.md)
 - [CityPayApiClient::RefundRequest](docs/RefundRequest.md)
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

