# CityPay API Client for Ruby

CityPayApiClient - the Ruby gem for the CityPay Payment API
[![Build Status](https://api.travis-ci.com/citypay/citypay-api-client-ruby.svg?branch=master)](https://app.travis-ci.com/github/citypay/citypay-api-client-ruby)


This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It
provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing,
3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and
Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.

## Compliance and Security
Your application will need to adhere to PCI-DSS standards to operate safely and to meet requirements set out by 
Visa and MasterCard and the PCI Security Standards Council. These include

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

- API version: 6.4.18
- Package version: 1.1.1
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
gem install ./citypay_api_client-1.1.1.gem
```

(for development, run `gem install --dev ./citypay_api_client-1.1.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'citypay_api_client', '~> 1.1.1'

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

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
auth_request = CityPayApiClient::AuthRequest.new({amount: 3600, cardnumber: '4000 0000 0000 0002', expmonth: 9, expyear: 2025, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95', merchantid: 11223344}) # AuthRequest | 

begin
  #Authorisation
  result = api_instance.authorisation_request(auth_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Exception when calling AuthorisationAndPaymentApi->authorisation_request: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.citypay.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CityPayApiClient::AuthorisationAndPaymentApi* | [**authorisation_request**](docs/AuthorisationAndPaymentApi.md#authorisation_request) | **POST** /v6/authorise | Authorisation
*CityPayApiClient::AuthorisationAndPaymentApi* | [**bin_range_lookup_request**](docs/AuthorisationAndPaymentApi.md#bin_range_lookup_request) | **POST** /v6/bin | Bin Lookup
*CityPayApiClient::AuthorisationAndPaymentApi* | [**c_res_request**](docs/AuthorisationAndPaymentApi.md#c_res_request) | **POST** /v6/cres | CRes
*CityPayApiClient::AuthorisationAndPaymentApi* | [**capture_request**](docs/AuthorisationAndPaymentApi.md#capture_request) | **POST** /v6/capture | Capture
*CityPayApiClient::AuthorisationAndPaymentApi* | [**pa_res_request**](docs/AuthorisationAndPaymentApi.md#pa_res_request) | **POST** /v6/pares | PaRes
*CityPayApiClient::AuthorisationAndPaymentApi* | [**refund_request**](docs/AuthorisationAndPaymentApi.md#refund_request) | **POST** /v6/refund | Refund
*CityPayApiClient::AuthorisationAndPaymentApi* | [**retrieval_request**](docs/AuthorisationAndPaymentApi.md#retrieval_request) | **POST** /v6/retrieve | Retrieval
*CityPayApiClient::AuthorisationAndPaymentApi* | [**void_request**](docs/AuthorisationAndPaymentApi.md#void_request) | **POST** /v6/void | Void
*CityPayApiClient::BatchProcessingApi* | [**batch_process_request**](docs/BatchProcessingApi.md#batch_process_request) | **POST** /v6/batch/process | Batch Process Request
*CityPayApiClient::BatchProcessingApi* | [**batch_report_request**](docs/BatchProcessingApi.md#batch_report_request) | **POST** /v6/batch/retrieve | BatchReportRequest
*CityPayApiClient::BatchProcessingApi* | [**check_batch_status_request**](docs/BatchProcessingApi.md#check_batch_status_request) | **POST** /v6/batch/status | CheckBatchStatus
*CityPayApiClient::CardHolderAccountApi* | [**account_card_delete_request**](docs/CardHolderAccountApi.md#account_card_delete_request) | **DELETE** /v6/account/{accountid}/card/{cardId} | Card Deletion
*CityPayApiClient::CardHolderAccountApi* | [**account_card_register_request**](docs/CardHolderAccountApi.md#account_card_register_request) | **POST** /v6/account/{accountid}/register | Card Registration
*CityPayApiClient::CardHolderAccountApi* | [**account_card_status_request**](docs/CardHolderAccountApi.md#account_card_status_request) | **POST** /v6/account/{accountid}/card/{cardId}/status | Card Status
*CityPayApiClient::CardHolderAccountApi* | [**account_change_contact_request**](docs/CardHolderAccountApi.md#account_change_contact_request) | **POST** /v6/account/{accountid}/contact | Contact Details Update
*CityPayApiClient::CardHolderAccountApi* | [**account_create**](docs/CardHolderAccountApi.md#account_create) | **POST** /v6/account/create | Account Create
*CityPayApiClient::CardHolderAccountApi* | [**account_delete_request**](docs/CardHolderAccountApi.md#account_delete_request) | **DELETE** /v6/account/{accountid} | Account Deletion
*CityPayApiClient::CardHolderAccountApi* | [**account_exists_request**](docs/CardHolderAccountApi.md#account_exists_request) | **GET** /v6/account-exists/{accountid} | Account Exists
*CityPayApiClient::CardHolderAccountApi* | [**account_retrieve_request**](docs/CardHolderAccountApi.md#account_retrieve_request) | **GET** /v6/account/{accountid} | Account Retrieval
*CityPayApiClient::CardHolderAccountApi* | [**account_status_request**](docs/CardHolderAccountApi.md#account_status_request) | **POST** /v6/account/{accountid}/status | Account Status
*CityPayApiClient::CardHolderAccountApi* | [**charge_request**](docs/CardHolderAccountApi.md#charge_request) | **POST** /v6/charge | Charge
*CityPayApiClient::DirectPostApi* | [**direct_c_res_auth_request**](docs/DirectPostApi.md#direct_c_res_auth_request) | **POST** /direct/cres/auth/{uuid} | Handles a CRes response from ACS, returning back the result of authorisation
*CityPayApiClient::DirectPostApi* | [**direct_c_res_tokenise_request**](docs/DirectPostApi.md#direct_c_res_tokenise_request) | **POST** /direct/cres/tokenise/{uuid} | Handles a CRes response from ACS, returning back a token for future authorisation
*CityPayApiClient::DirectPostApi* | [**direct_post_auth_request**](docs/DirectPostApi.md#direct_post_auth_request) | **POST** /direct/auth | Direct Post Auth Request
*CityPayApiClient::DirectPostApi* | [**direct_post_tokenise_request**](docs/DirectPostApi.md#direct_post_tokenise_request) | **POST** /direct/tokenise | Direct Post Tokenise Request
*CityPayApiClient::DirectPostApi* | [**token_request**](docs/DirectPostApi.md#token_request) | **POST** /direct/token | Direct Post Token Request
*CityPayApiClient::OperationalFunctionsApi* | [**acl_check_request**](docs/OperationalFunctionsApi.md#acl_check_request) | **POST** /v6/acl/check | ACL Check Request
*CityPayApiClient::OperationalFunctionsApi* | [**domain_key_check_request**](docs/OperationalFunctionsApi.md#domain_key_check_request) | **POST** /dk/check | Domain Key Check Request
*CityPayApiClient::OperationalFunctionsApi* | [**domain_key_gen_request**](docs/OperationalFunctionsApi.md#domain_key_gen_request) | **POST** /dk/gen | Domain Key Generation Request
*CityPayApiClient::OperationalFunctionsApi* | [**list_merchants_request**](docs/OperationalFunctionsApi.md#list_merchants_request) | **GET** /v6/merchants/{clientid} | List Merchants Request
*CityPayApiClient::OperationalFunctionsApi* | [**ping_request**](docs/OperationalFunctionsApi.md#ping_request) | **POST** /v6/ping | Ping Request
*CityPayApiClient::PaylinkApi* | [**token_adjustment_request**](docs/PaylinkApi.md#token_adjustment_request) | **POST** /paylink/{token}/adjustment | Paylink Token Adjustment
*CityPayApiClient::PaylinkApi* | [**token_close_request**](docs/PaylinkApi.md#token_close_request) | **PUT** /paylink/{token}/close | Close Paylink Token
*CityPayApiClient::PaylinkApi* | [**token_create_bill_payment_request**](docs/PaylinkApi.md#token_create_bill_payment_request) | **POST** /paylink/bill-payment | Create Bill Payment Paylink Token
*CityPayApiClient::PaylinkApi* | [**token_create_request**](docs/PaylinkApi.md#token_create_request) | **POST** /paylink/create | Create Paylink Token
*CityPayApiClient::PaylinkApi* | [**token_purge_attachments_request**](docs/PaylinkApi.md#token_purge_attachments_request) | **PUT** /paylink/{token}/purge-attachments | Purges any attachments for a Paylink Token
*CityPayApiClient::PaylinkApi* | [**token_reconciled_request**](docs/PaylinkApi.md#token_reconciled_request) | **PUT** /paylink/{token}/reconciled | Reconcile Paylink Token
*CityPayApiClient::PaylinkApi* | [**token_reopen_request**](docs/PaylinkApi.md#token_reopen_request) | **PUT** /paylink/{token}/reopen | Reopen Paylink Token
*CityPayApiClient::PaylinkApi* | [**token_status_changes_request**](docs/PaylinkApi.md#token_status_changes_request) | **POST** /paylink/token/changes | Paylink Token Audit
*CityPayApiClient::PaylinkApi* | [**token_status_request**](docs/PaylinkApi.md#token_status_request) | **GET** /paylink/{token}/status | Paylink Token Status


## Documentation for Models

 - [CityPayApiClient::AccountCreate](docs/AccountCreate.md)
 - [CityPayApiClient::AccountStatus](docs/AccountStatus.md)
 - [CityPayApiClient::Acknowledgement](docs/Acknowledgement.md)
 - [CityPayApiClient::AclCheckRequest](docs/AclCheckRequest.md)
 - [CityPayApiClient::AclCheckResponseModel](docs/AclCheckResponseModel.md)
 - [CityPayApiClient::AirlineAdvice](docs/AirlineAdvice.md)
 - [CityPayApiClient::AirlineSegment](docs/AirlineSegment.md)
 - [CityPayApiClient::AuthReference](docs/AuthReference.md)
 - [CityPayApiClient::AuthReferences](docs/AuthReferences.md)
 - [CityPayApiClient::AuthRequest](docs/AuthRequest.md)
 - [CityPayApiClient::AuthResponse](docs/AuthResponse.md)
 - [CityPayApiClient::AuthenRequired](docs/AuthenRequired.md)
 - [CityPayApiClient::Batch](docs/Batch.md)
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
 - [CityPayApiClient::DirectPostRequest](docs/DirectPostRequest.md)
 - [CityPayApiClient::DirectTokenAuthRequest](docs/DirectTokenAuthRequest.md)
 - [CityPayApiClient::DomainKeyCheckRequest](docs/DomainKeyCheckRequest.md)
 - [CityPayApiClient::DomainKeyRequest](docs/DomainKeyRequest.md)
 - [CityPayApiClient::DomainKeyResponse](docs/DomainKeyResponse.md)
 - [CityPayApiClient::Error](docs/Error.md)
 - [CityPayApiClient::EventDataModel](docs/EventDataModel.md)
 - [CityPayApiClient::Exists](docs/Exists.md)
 - [CityPayApiClient::ExternalMPI](docs/ExternalMPI.md)
 - [CityPayApiClient::ListMerchantsResponse](docs/ListMerchantsResponse.md)
 - [CityPayApiClient::MCC6012](docs/MCC6012.md)
 - [CityPayApiClient::Merchant](docs/Merchant.md)
 - [CityPayApiClient::PaResAuthRequest](docs/PaResAuthRequest.md)
 - [CityPayApiClient::PaylinkAddress](docs/PaylinkAddress.md)
 - [CityPayApiClient::PaylinkAdjustmentRequest](docs/PaylinkAdjustmentRequest.md)
 - [CityPayApiClient::PaylinkAttachmentRequest](docs/PaylinkAttachmentRequest.md)
 - [CityPayApiClient::PaylinkAttachmentResult](docs/PaylinkAttachmentResult.md)
 - [CityPayApiClient::PaylinkBillPaymentTokenRequest](docs/PaylinkBillPaymentTokenRequest.md)
 - [CityPayApiClient::PaylinkCardHolder](docs/PaylinkCardHolder.md)
 - [CityPayApiClient::PaylinkCart](docs/PaylinkCart.md)
 - [CityPayApiClient::PaylinkCartItemModel](docs/PaylinkCartItemModel.md)
 - [CityPayApiClient::PaylinkConfig](docs/PaylinkConfig.md)
 - [CityPayApiClient::PaylinkCustomParam](docs/PaylinkCustomParam.md)
 - [CityPayApiClient::PaylinkEmailNotificationPath](docs/PaylinkEmailNotificationPath.md)
 - [CityPayApiClient::PaylinkErrorCode](docs/PaylinkErrorCode.md)
 - [CityPayApiClient::PaylinkFieldGuardModel](docs/PaylinkFieldGuardModel.md)
 - [CityPayApiClient::PaylinkPartPayments](docs/PaylinkPartPayments.md)
 - [CityPayApiClient::PaylinkSMSNotificationPath](docs/PaylinkSMSNotificationPath.md)
 - [CityPayApiClient::PaylinkStateEvent](docs/PaylinkStateEvent.md)
 - [CityPayApiClient::PaylinkTokenCreated](docs/PaylinkTokenCreated.md)
 - [CityPayApiClient::PaylinkTokenRequestModel](docs/PaylinkTokenRequestModel.md)
 - [CityPayApiClient::PaylinkTokenStatus](docs/PaylinkTokenStatus.md)
 - [CityPayApiClient::PaylinkTokenStatusChangeRequest](docs/PaylinkTokenStatusChangeRequest.md)
 - [CityPayApiClient::PaylinkTokenStatusChangeResponse](docs/PaylinkTokenStatusChangeResponse.md)
 - [CityPayApiClient::PaylinkUI](docs/PaylinkUI.md)
 - [CityPayApiClient::Ping](docs/Ping.md)
 - [CityPayApiClient::ProcessBatchRequest](docs/ProcessBatchRequest.md)
 - [CityPayApiClient::ProcessBatchResponse](docs/ProcessBatchResponse.md)
 - [CityPayApiClient::RefundRequest](docs/RefundRequest.md)
 - [CityPayApiClient::RegisterCard](docs/RegisterCard.md)
 - [CityPayApiClient::RequestChallenged](docs/RequestChallenged.md)
 - [CityPayApiClient::RetrieveRequest](docs/RetrieveRequest.md)
 - [CityPayApiClient::ThreeDSecure](docs/ThreeDSecure.md)
 - [CityPayApiClient::TokenisationResponseModel](docs/TokenisationResponseModel.md)
 - [CityPayApiClient::VoidRequest](docs/VoidRequest.md)


## Documentation for Authorization


### cp-api-key


- **Type**: API key
- **API key parameter name**: cp-api-key
- **Location**: HTTP header

### cp-domain-key


- **Type**: API key
- **API key parameter name**: cp-domain-key
- **Location**: URL query string

