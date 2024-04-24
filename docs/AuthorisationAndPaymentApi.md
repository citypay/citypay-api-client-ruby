# CityPayApiClient::AuthorisationAndPaymentApi

All URIs are relative to *https://api.citypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorisation_request**](AuthorisationAndPaymentApi.md#authorisation_request) | **POST** /v6/authorise | Authorisation |
| [**bin_range_lookup_request**](AuthorisationAndPaymentApi.md#bin_range_lookup_request) | **POST** /v6/bin | Bin Lookup |
| [**c_res_request**](AuthorisationAndPaymentApi.md#c_res_request) | **POST** /v6/cres | CRes |
| [**capture_request**](AuthorisationAndPaymentApi.md#capture_request) | **POST** /v6/capture | Capture |
| [**create_payment_intent**](AuthorisationAndPaymentApi.md#create_payment_intent) | **POST** /v6/intent/create | Create a Payment Intent |
| [**pa_res_request**](AuthorisationAndPaymentApi.md#pa_res_request) | **POST** /v6/pares | PaRes |
| [**refund_request**](AuthorisationAndPaymentApi.md#refund_request) | **POST** /v6/refund | Refund |
| [**retrieval_request**](AuthorisationAndPaymentApi.md#retrieval_request) | **POST** /v6/retrieve | Retrieval |
| [**void_request**](AuthorisationAndPaymentApi.md#void_request) | **POST** /v6/void | Void |


## authorisation_request

> <Decision> authorisation_request(auth_request)

Authorisation

Performs a request for authorisation for a card payment request.

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
auth_request = CityPayApiClient::AuthRequest.new({amount: 19995, cardnumber: '4000 0000 0000 0002', expmonth: 9, expyear: 2027, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95', merchantid: 11223344}) # AuthRequest | 

begin
  # Authorisation
  result = api_instance.authorisation_request(auth_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->authorisation_request: #{e}"
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
  puts "Error when calling AuthorisationAndPaymentApi->authorisation_request_with_http_info: #{e}"
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

A bin range lookup service can be used to check what a card is, as seen by the gateway. Each card number's 
leading digits help to identify who

0. the card scheme is such as Visa, MasterCard or American Express 
1. the issuer of the card, such as the bank
2. it's country of origin
3. it's currency of origin

Our gateway has 450 thousand possible bin ranges and uses a number of algorithms to determine the likelihood of the bin
data. The request requires a bin value of between 6 and 12 digits. The more digits provided may ensure a more accurate
result.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
bin_lookup = CityPayApiClient::BinLookup.new({bin: 543712}) # BinLookup | 

begin
  # Bin Lookup
  result = api_instance.bin_range_lookup_request(bin_lookup)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->bin_range_lookup_request: #{e}"
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
  puts "Error when calling AuthorisationAndPaymentApi->bin_range_lookup_request_with_http_info: #{e}"
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

The CRes request performs authorisation processing once a challenge request has been completed
with an Authentication Server (ACS). This challenge response contains confirmation that will
allow the API systems to return an authorisation response based on the result. Our systems will 
know out of band via an `RReq` call by the ACS to notify us if the liability shift has been issued.

Any call to the CRes operation will require a previous authorisation request and cannot be called 
on its own without a previous [request challenge](#requestchallenged) being obtained.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
c_res_auth_request = CityPayApiClient::CResAuthRequest.new # CResAuthRequest | 

begin
  # CRes
  result = api_instance.c_res_request(c_res_auth_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->c_res_request: #{e}"
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
  puts "Error when calling AuthorisationAndPaymentApi->c_res_request_with_http_info: #{e}"
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

_The capture process only applies to transactions which have been pre-authorised only._ 

The capture process will ensure
that a transaction will now settle. It is expected that a capture call will be provided within 3 days or
a maximum of 7 days.

A capture request is provided to confirm that you wish the transaction to be settled. This request can
contain a final amount for the transaction which is different to the original authorisation amount. This
may be useful in a delayed system process such as waiting for stock to be ordered, confirmed, or services
provided before the final cost is known.

When a transaction is completed, a new authorisation code may be created and a new confirmation
can be sent online to the acquiring bank.

Once the transaction has been processed. A standard [`Acknowledgement`](#acknowledgement) will be returned,
outlining the result of the transaction. On a successful completion process, the transaction will
be available for the settlement and completed at the end of the day.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
capture_request = CityPayApiClient::CaptureRequest.new({merchantid: 11223344}) # CaptureRequest | 

begin
  # Capture
  result = api_instance.capture_request(capture_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->capture_request: #{e}"
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
  puts "Error when calling AuthorisationAndPaymentApi->capture_request_with_http_info: #{e}"
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


## create_payment_intent

> <PaymentIntentReference> create_payment_intent(payment_intent)

Create a Payment Intent

This endpoint initiates the creation of a payment intent, which is a precursor to processing a payment. A payment intent
captures the details of a prospective payment transaction, including the payment amount, currency, and associated
billing and shipping information.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
payment_intent = CityPayApiClient::PaymentIntent.new({amount: 19995, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95'}) # PaymentIntent | 

begin
  # Create a Payment Intent
  result = api_instance.create_payment_intent(payment_intent)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->create_payment_intent: #{e}"
end
```

#### Using the create_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentReference>, Integer, Hash)> create_payment_intent_with_http_info(payment_intent)

```ruby
begin
  # Create a Payment Intent
  data, status_code, headers = api_instance.create_payment_intent_with_http_info(payment_intent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentReference>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->create_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent** | [**PaymentIntent**](PaymentIntent.md) |  |  |

### Return type

[**PaymentIntentReference**](PaymentIntentReference.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## pa_res_request

> <AuthResponse> pa_res_request(pa_res_auth_request)

PaRes

The Payer Authentication Response (PaRes) is an operation after the result of authentication 
 being performed. The request uses an encoded packet of authentication data to 
notify us of the completion of the liability shift. Once this value has been unpacked and its
signature is checked, our systems will proceed to authorisation processing.  

Any call to the PaRes operation will require a previous authorisation request and cannot be called 
on its own without a previous [authentication required](#authenticationrequired)  being obtained.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
pa_res_auth_request = CityPayApiClient::PaResAuthRequest.new({md: 'md_example', pares: 'v66ycfSp8jNlvy7PkHbx44NEt3vox90+vZ/7Ll05Vid/jPfQn8adw+4D/vRDUGT19kndW97Hfirb...'}) # PaResAuthRequest | 

begin
  # PaRes
  result = api_instance.pa_res_request(pa_res_auth_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->pa_res_request: #{e}"
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
  puts "Error when calling AuthorisationAndPaymentApi->pa_res_request_with_http_info: #{e}"
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

A refund request which allows for the refunding of a previous transaction up 
and to the amount of the original sale. A refund will be performed against the 
original card used to process the transaction.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
refund_request = CityPayApiClient::RefundRequest.new({amount: 19995, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95', merchantid: 11223344, refund_ref: 8322}) # RefundRequest | 

begin
  # Refund
  result = api_instance.refund_request(refund_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->refund_request: #{e}"
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
  puts "Error when calling AuthorisationAndPaymentApi->refund_request_with_http_info: #{e}"
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

A retrieval request which allows an integration to obtain the result of a transaction processed
in the last 90 days. The request allows for retrieval based on the identifier or transaction 
number. 

The process may return multiple results in particular where a transaction was processed multiple
times against the same identifier. This can happen if errors were first received. The API therefore
returns up to the first 5 transactions in the latest date time order.

It is not intended for this operation to be a replacement for reporting and only allows for base transaction
information to be returned.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
retrieve_request = CityPayApiClient::RetrieveRequest.new({merchantid: 11223344}) # RetrieveRequest | 

begin
  # Retrieval
  result = api_instance.retrieval_request(retrieve_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->retrieval_request: #{e}"
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
  puts "Error when calling AuthorisationAndPaymentApi->retrieval_request_with_http_info: #{e}"
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

_The void process generally applies to transactions which have been pre-authorised only however voids can occur 
on the same day if performed before batching and settlement._ 

The void process will ensure that a transaction will now settle. It is expected that a void call will be 
provided on the same day before batching and settlement or within 3 days or within a maximum of 7 days.

Once the transaction has been processed as a void, an [`Acknowledgement`](#acknowledgement) will be returned,
outlining the result of the transaction.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::AuthorisationAndPaymentApi.new
void_request = CityPayApiClient::VoidRequest.new({merchantid: 11223344}) # VoidRequest | 

begin
  # Void
  result = api_instance.void_request(void_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling AuthorisationAndPaymentApi->void_request: #{e}"
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
  puts "Error when calling AuthorisationAndPaymentApi->void_request_with_http_info: #{e}"
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

