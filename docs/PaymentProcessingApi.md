# CityPayApiClient::PaymentProcessingApi

All URIs are relative to *https://api.citypay.com/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorisation_request**](PaymentProcessingApi.md#authorisation_request) | **POST** /authorise | Authorisation |
| [**bin_range_lookup_request**](PaymentProcessingApi.md#bin_range_lookup_request) | **POST** /bin | Bin Lookup |
| [**c_res_request**](PaymentProcessingApi.md#c_res_request) | **POST** /cres | CRes |
| [**capture_request**](PaymentProcessingApi.md#capture_request) | **POST** /capture | Capture |
| [**pa_res_request**](PaymentProcessingApi.md#pa_res_request) | **POST** /pares | PaRes |
| [**refund_request**](PaymentProcessingApi.md#refund_request) | **POST** /refund | Refund |
| [**retrieval_request**](PaymentProcessingApi.md#retrieval_request) | **POST** /retrieve | Retrieval |
| [**void_request**](PaymentProcessingApi.md#void_request) | **POST** /void | Void |


## authorisation_request

> <Decision> authorisation_request(auth_request)

Authorisation

An authorisation process performs a standard transaction authorisation based on the provided parameters of its request. The CityPay gateway will route your transaction via an Acquiring bank for subsequent authorisation to the appropriate card  schemes such as Visa or MasterCard.  The authorisation API should be used for server environments to process transactions on demand and in realtime.   The authorisation API can be used for multiple types of transactions including E-commerce, mail order, telephone order, customer present (keyed), continuous authority, pre-authorisation and others. CityPay will configure your account for  the appropriate coding and this will perform transparently by the gateway.   Data properties that are required, may depend on the environment you are conducting payment for. Our API aims to be  flexible enough to cater for these structures. Our integration team will aid you in providing the necessary data to   transact.      ### E-commerce workflows   For E-commerce transactions requiring 3DSv1 and 3DSv2 transactions, the API contains a fully accredited in built mechanism to handle authentication.  The gateway has been accredited extensively with both Acquirers and Card Schemes and simplifies the nature of these calls into a simple structure for authentication, preventing integrators from performing lengthy and a costly accreditation with Visa and MasterCard.  3D-secure has been around for a number of years and aims to shift the liability of a transaction away from a merchant back to the card holder. A *liability shift* determines whether a card holder can charge back a transaction as unknown. Effectively the process asks for a card holder to authenticate the transaction prior to authorisation producing a Cardholder  verification value (CAVV) as evidence of authorisation.   #### 3DSv1  ```json {    \"AuthenticationRequired\": {     \"acsurl\": \"https://bank.com/3DS/ACS\",     \"pareq\": \"SXQgd2FzIHRoZSBiZXN0IG9mIHRpbWVzLCBpdCB3YXMgdGhlIHdvcnN00...\",     \"md\": \"WQgZXZlcnl0aGluZyBiZW\"   }                } ```  ```xml <AuthenticationRequired>  <acsurl>https://bank.com/3DS/ACS</acsurl>  <pareq>SXQgd2FzIHRoZSBiZXN0IG9mIHRpbWVzLCBpdCB3YXMgdGhlIHdvcnN00...</pareq>  <md>WQgZXZlcnl0aGluZyBiZW</md> </AuthenticationRequired> ```  For E-commerce transactions requiring 3DSv1, the API contains a built in MPI which will be called to check whether the  card is participating in 3DSv1 with Verified by Visa or MasterCard SecureCode. We only support Amex SafeKey with 3DSv2. Should the card be enrolled, a payer  request (PAReq) value will be created and returned back as an [authentication required](#authenticationrequired) response object.   Your system will need to process this authentication packet and forward the user's browser to an authentication server (ACS)  to gain the user's authentication. Once complete, the ACS will produce a HTTP `POST` call back to the URL supplied in   the authentication request as `merchant_termurl`. This URL should behave as a controller and handle the post data from the   ACS and on a forked server to server HTTP request, forward this data to the [pares authentication url](#pares) for    subsequent authorisation processing. You may prefer to provide a processing page whilst this is being processed.   Processing with our systems should be relatively quick and be between 500ms - 3000ms however it is desirable to let   the user see that something is happening rather than a pending browser.      The main reason for ensuring that this controller is two fold:      1. We are never in control of the user's browser in a server API call   2. The controller is actioned on your site to ensure that any post actions from authorisation can be executed in real time    To forward the user to the ACS, we recommend a simple auto submit HTML form.  > Simple auto submit HTML form  ```html <html lang=\"en\"> <head>         <title>Forward to ACS</title> <script type=\"text/javascript\">         function onLoadEvent() {              document.acs.submit();          }         </script>         <noscript>You will require JavaScript to be enabled to complete this transaction</noscript>     </head>     <body onload=\"onLoadEvent();\">         <form name=\"acs\" action=\"{{ACSURL from Response}}\" method=\"POST\">             <input type=\"hidden\" name=\"PaReq\" value=\"{{PaReq Packet from Response}}\" />             <input type=\"hidden\" name=\"TermUrl\" value=\"{{Your Controller}}\" />             <input type=\"hidden\" name=\"MD\" value=\"{{MD From Response}}\" />         </form>     </body> </html> ```  Please note that 3DSv1 is being phased out due to changes to strong customer authentication mechanisms. 3DSv2 addresses this and will solidify the authorisation and confirmation process.  We provide a Test ACS for full 3DSv1 integration testing that simulates an ACS.    #### 3DSv2  ```json {    \"RequestChallenged\": {     \"acsurl\": \"https://bank.com/3DS/ACS\",     \"creq\": \"SXQgd2FzIHRoZSBiZXN0IG9mIHRpbWVzLCBpdCB3YXMgdGhlIHdvcnN00...\",     \"merchantid\": 12345,     \"transno\": 1,     \"threedserver_trans_id\": \"d652d8d2-d74a-4264-a051-a7862b10d5d6\"   }                } ```  ```xml <RequestChallenged>   <acsurl>https://bank.com/3DS/ACS</acsurl>   <creq>SXQgd2FzIHRoZSBiZXN0IG9mIHRpbWVzLCBpdCB3YXMgdGhlIHdvcnN00...</creq>   <merchantid>12345</merchantid>   <transno>1</transno>   <threedserver_trans_id>d652d8d2-d74a-4264-a051-a7862b10d5d6</threedserver_trans_id> </RequestChallenged> ```  All merchants in the EEC will require to migrate their E-commerce transactions to a secure customer authentication  model (SCA) throughout 2020. This has been adopted by the payment's industry as a progressive move alongside the European  Unions payments service directive.  CityPay support 3DSv2 for Verified by Visa, MasterCard Identity Check and American Express SafeKey 2.0 and will be rolling out acquirers on the new platform from Q4 2020. The new enhancement to 3DSv2 will allow for CityPay to seamlessly authenticate transactions in a \"frictionless\" flowed method which will authenticate low risk transactions with minimal impact to a  standard authorisation flow. Our API simply performs this on behalf of the merchant and cardholder. For these transactions you will not be required to change anything.  However, should a transaction be \"challenged\" the API will return a [request challenge](#requestchallenged) which will  require your integration to forward the cardholder's browser to the given [ACS url](#acsurl) by posting the [creq](#creq) value. Once complete, the ACS will have already been in touch with our servers by sending us a result of the authentication known as `RReq`.  To maintain session state, a parameter `ThreeDSSessionData` can be posted to the ACS url and will be returned alongside  the `CRes` value. This will ensure that any controller code will be able to isolate state between calls. This field is to be used by your own systems rather than ours and may be any value which can uniquely identify your cardholder's session. As an option, we do provide a `threedserver_trans_id` value in the `RequestChallenged` packet which can be used for the `ThreeDSSessionData` value as it is used to uniquely identify the 3D-Secure session.   Our servers however will await confirmation that the authorisation should continue and on receipt of a [cres](#cres) value, the flow will perform full authorisation processing.   Please note that the CRes returned to us is purely a mechanism of acknowledging that transactions should be committed for authorisation. The ACS by this point will have sent us the verification value (CAVV) to perform a liability shift. The CRes value will be validated for receipt of the CAVV and subsequently may return back response codes illustrating this.   To forward the user to the ACS, we recommend a simple auto submit HTML form.  > Simple auto submit HTML form  ```html <html lang=\"en\"> <head>         <title>Forward to ACS</title> <script type=\"text/javascript\">         function onLoadEvent() {              document.acs.submit();          }         </script>         <noscript>You will require JavaScript to be enabled to complete this transaction</noscript>     </head>     <body onload=\"onLoadEvent();\">         <form name=\"acs\" action=\"{{ACSURL from Response}}\" method=\"POST\">             <input type=\"hidden\" name=\"creq\" value=\"{{CReq Packet from Response}}\" />             <input type=\"hidden\" name=\"ThreeDSSessionData\" value=\"{{session-identifier}}\" />         </form>     </body> </html> ```  We are currently working on an integration test suite for 3DSv2 which will mock the ACS challenge process.          ### Testing 3DSv2 Integrations  The API provides a mock 3dsV2 handler which performs a number of scenarios based on the value of the CSC in the request.  | CSC Value | Behaviour | |-----------|-----------| | 731       | Frictionless processing - Not authenticated | | 732       | Frictionless processing - Account verification count not be performed |         | 733       | Frictionless processing - Verification Rejected |         | 741       | Frictionless processing - Attempts Processing |         | 750       | Frictionless processing - Authenticated  |         | 761       | Triggers an error message |   | Any       | Challenge Request | 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::PaymentProcessingApi.new
auth_request = CityPayApiClient::AuthRequest.new({amount: 3600, cardnumber: '4000 0000 0000 0002', expmonth: 9, expyear: 2024, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95', merchantid: 11223344}) # AuthRequest | 

begin
  # Authorisation
  result = api_instance.authorisation_request(auth_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->authorisation_request: #{e}"
end
```

#### Using the authorisation_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Decision>, Integer, Hash)> authorisation_request_with_http_info(auth_request)

```ruby
begin
  # Authorisation
  data, status_code, headers = api_instance.authorisation_request_with_http_info(auth_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Decision>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->authorisation_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_request** | [**AuthRequest**](AuthRequest.md) |  |  |

### Return type

[**Decision**](Decision.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## bin_range_lookup_request

> <Bin> bin_range_lookup_request(bin_lookup)

Bin Lookup

A bin range lookup service can be used to check what a card is, as seen by the gateway. Each card number's  leading digits help to identify who  0. the card scheme is such as Visa, MasterCard or American Express  1. the issuer of the card, such as the bank 2. it's country of origin 3. it's currency of origin  Our gateway has 450 thousand possible bin ranges and uses a number of algorithms to determine the likelihood of the bin data. The request requires a bin value of between 6 and 12 digits. The more digits provided may ensure a more accurate result. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::PaymentProcessingApi.new
bin_lookup = CityPayApiClient::BinLookup.new({bin: 543712}) # BinLookup | 

begin
  # Bin Lookup
  result = api_instance.bin_range_lookup_request(bin_lookup)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->bin_range_lookup_request: #{e}"
end
```

#### Using the bin_range_lookup_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Bin>, Integer, Hash)> bin_range_lookup_request_with_http_info(bin_lookup)

```ruby
begin
  # Bin Lookup
  data, status_code, headers = api_instance.bin_range_lookup_request_with_http_info(bin_lookup)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Bin>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->bin_range_lookup_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bin_lookup** | [**BinLookup**](BinLookup.md) |  |  |

### Return type

[**Bin**](Bin.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## c_res_request

> <AuthResponse> c_res_request(c_res_auth_request)

CRes

The CRes request performs authorisation processing once a challenge request has been completed with an Authentication Server (ACS). This challenge response contains confirmation that will allow the API systems to return an authorisation response based on the result. Our systems will  know out of band via an `RReq` call by the ACS to notify us if the liability shift has been issued.  Any call to the CRes operation will require a previous authorisation request and cannot be called  on its own without a previous [request challenge](#requestchallenged) being obtained. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::PaymentProcessingApi.new
c_res_auth_request = CityPayApiClient::CResAuthRequest.new # CResAuthRequest | 

begin
  # CRes
  result = api_instance.c_res_request(c_res_auth_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->c_res_request: #{e}"
end
```

#### Using the c_res_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> c_res_request_with_http_info(c_res_auth_request)

```ruby
begin
  # CRes
  data, status_code, headers = api_instance.c_res_request_with_http_info(c_res_auth_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->c_res_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **c_res_auth_request** | [**CResAuthRequest**](CResAuthRequest.md) |  |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## capture_request

> <Acknowledgement> capture_request(capture_request)

Capture

_The capture process only applies to transactions which have been pre-authorised only._   The capture process will ensure that a transaction will now settle. It is expected that a capture call will be provided within 3 days or a maximum of 7 days.  A capture request is provided to confirm that you wish the transaction to be settled. This request can contain a final amount for the transaction which is different to the original authorisation amount. This may be useful in a delayed system process such as waiting for stock to be ordered, confirmed, or services provided before the final cost is known.  When a transaction is completed, a new authorisation code may be created and a new confirmation can be sent online to the acquiring bank.  Once the transaction has been processed. A standard [`Acknowledgement`](#acknowledgement) will be returned, outlining the result of the transaction. On a successful completion process, the transaction will be available for the settlement and completed at the end of the day. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::PaymentProcessingApi.new
capture_request = CityPayApiClient::CaptureRequest.new({merchantid: 11223344}) # CaptureRequest | 

begin
  # Capture
  result = api_instance.capture_request(capture_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->capture_request: #{e}"
end
```

#### Using the capture_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Acknowledgement>, Integer, Hash)> capture_request_with_http_info(capture_request)

```ruby
begin
  # Capture
  data, status_code, headers = api_instance.capture_request_with_http_info(capture_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Acknowledgement>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->capture_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capture_request** | [**CaptureRequest**](CaptureRequest.md) |  |  |

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## pa_res_request

> <AuthResponse> pa_res_request(pa_res_auth_request)

PaRes

The Payer Authentication Response (PaRes) is an operation after the result of authentication   being performed. The request uses an encoded packet of authentication data to  notify us of the completion of the liability shift. Once this value has been unpacked and its signature is checked, our systems will proceed to authorisation processing.    Any call to the PaRes operation will require a previous authorisation request and cannot be called  on its own without a previous [authentication required](#authenticationrequired)  being obtained. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::PaymentProcessingApi.new
pa_res_auth_request = CityPayApiClient::PaResAuthRequest.new({md: 'md_example', pares: 'v66ycfSp8jNlvy7PkHbx44NEt3vox90+vZ/7Ll05Vid/jPfQn8adw+4D/vRDUGT19kndW97Hfirb...'}) # PaResAuthRequest | 

begin
  # PaRes
  result = api_instance.pa_res_request(pa_res_auth_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->pa_res_request: #{e}"
end
```

#### Using the pa_res_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> pa_res_request_with_http_info(pa_res_auth_request)

```ruby
begin
  # PaRes
  data, status_code, headers = api_instance.pa_res_request_with_http_info(pa_res_auth_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->pa_res_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pa_res_auth_request** | [**PaResAuthRequest**](PaResAuthRequest.md) |  |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## refund_request

> <AuthResponse> refund_request(refund_request)

Refund

A refund request which allows for the refunding of a previous transaction up  and to the amount of the original sale. A refund will be performed against the  original card used to process the transaction. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::PaymentProcessingApi.new
refund_request = CityPayApiClient::RefundRequest.new({amount: 3600, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95', merchantid: 11223344, refund_ref: 8322}) # RefundRequest | 

begin
  # Refund
  result = api_instance.refund_request(refund_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->refund_request: #{e}"
end
```

#### Using the refund_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> refund_request_with_http_info(refund_request)

```ruby
begin
  # Refund
  data, status_code, headers = api_instance.refund_request_with_http_info(refund_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->refund_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refund_request** | [**RefundRequest**](RefundRequest.md) |  |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## retrieval_request

> <AuthReferences> retrieval_request(retrieve_request)

Retrieval

A retrieval request which allows an integration to obtain the result of a transaction processed in the last 90 days. The request allows for retrieval based on the identifier or transaction  number.   The process may return multiple results in particular where a transaction was processed multiple times against the same identifier. This can happen if errors were first received. The API therefore returns up to the first 5 transactions in the latest date time order.  It is not intended for this operation to be a replacement for reporting and only allows for base transaction information to be returned. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::PaymentProcessingApi.new
retrieve_request = CityPayApiClient::RetrieveRequest.new({merchantid: 11223344}) # RetrieveRequest | 

begin
  # Retrieval
  result = api_instance.retrieval_request(retrieve_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->retrieval_request: #{e}"
end
```

#### Using the retrieval_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReferences>, Integer, Hash)> retrieval_request_with_http_info(retrieve_request)

```ruby
begin
  # Retrieval
  data, status_code, headers = api_instance.retrieval_request_with_http_info(retrieve_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReferences>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->retrieval_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retrieve_request** | [**RetrieveRequest**](RetrieveRequest.md) |  |  |

### Return type

[**AuthReferences**](AuthReferences.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## void_request

> <Acknowledgement> void_request(void_request)

Void

_The void process generally applies to transactions which have been pre-authorised only however voids can occur  on the same day if performed before batching and settlement._   The void process will ensure that a transaction will now settle. It is expected that a void call will be  provided on the same day before batching and settlement or within 3 days or within a maximum of 7 days.  Once the transaction has been processed as a void, an [`Acknowledgement`](#acknowledgement) will be returned, outlining the result of the transaction. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::PaymentProcessingApi.new
void_request = CityPayApiClient::VoidRequest.new({merchantid: 11223344}) # VoidRequest | 

begin
  # Void
  result = api_instance.void_request(void_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->void_request: #{e}"
end
```

#### Using the void_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Acknowledgement>, Integer, Hash)> void_request_with_http_info(void_request)

```ruby
begin
  # Void
  data, status_code, headers = api_instance.void_request_with_http_info(void_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Acknowledgement>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentProcessingApi->void_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **void_request** | [**VoidRequest**](VoidRequest.md) |  |  |

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml

