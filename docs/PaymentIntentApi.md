# CityPayApiClient::PaymentIntentApi

All URIs are relative to *https://api.citypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_intent**](PaymentIntentApi.md#create_payment_intent) | **POST** /v6/intent/create | Create a Payment Intent |
| [**get_payment_intent**](PaymentIntentApi.md#get_payment_intent) | **POST** /v6/intent/retrieve | Retrieves a Payment Intent |


## create_payment_intent

> <PaymentIntentReference> create_payment_intent(payment_intent_request_model)

Create a Payment Intent

This endpoint initiates the creation of a payment intent, which is a precursor to processing a payment. A payment intent captures the details of a prospective payment transaction, including the payment amount, currency, and associated billing and shipping information. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  # Configure API key authorization: cp-api-key
  config.api_key['cp-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cp-api-key'] = 'Bearer'
end

api_instance = CityPayApiClient::PaymentIntentApi.new
payment_intent_request_model = CityPayApiClient::PaymentIntentRequestModel.new({amount: 19995, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95'}) # PaymentIntentRequestModel | 

begin
  # Create a Payment Intent
  result = api_instance.create_payment_intent(payment_intent_request_model)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentIntentApi->create_payment_intent: #{e}"
end
```

#### Using the create_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentReference>, Integer, Hash)> create_payment_intent_with_http_info(payment_intent_request_model)

```ruby
begin
  # Create a Payment Intent
  data, status_code, headers = api_instance.create_payment_intent_with_http_info(payment_intent_request_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentReference>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentIntentApi->create_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_request_model** | [**PaymentIntentRequestModel**](PaymentIntentRequestModel.md) |  |  |

### Return type

[**PaymentIntentReference**](PaymentIntentReference.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## get_payment_intent

> <PaymentIntentResponseModel> get_payment_intent(find_payment_intent_request)

Retrieves a Payment Intent

Obtains a payment intent.

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  # Configure API key authorization: cp-api-key
  config.api_key['cp-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cp-api-key'] = 'Bearer'
end

api_instance = CityPayApiClient::PaymentIntentApi.new
find_payment_intent_request = CityPayApiClient::FindPaymentIntentRequest.new # FindPaymentIntentRequest | 

begin
  # Retrieves a Payment Intent
  result = api_instance.get_payment_intent(find_payment_intent_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentIntentApi->get_payment_intent: #{e}"
end
```

#### Using the get_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponseModel>, Integer, Hash)> get_payment_intent_with_http_info(find_payment_intent_request)

```ruby
begin
  # Retrieves a Payment Intent
  data, status_code, headers = api_instance.get_payment_intent_with_http_info(find_payment_intent_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponseModel>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling PaymentIntentApi->get_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **find_payment_intent_request** | [**FindPaymentIntentRequest**](FindPaymentIntentRequest.md) |  |  |

### Return type

[**PaymentIntentResponseModel**](PaymentIntentResponseModel.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml

