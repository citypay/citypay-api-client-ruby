# CityPayApiClient::OperationalApi

All URIs are relative to *https://api.citypay.com/v6*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_merchants_request**](OperationalApi.md#list_merchants_request) | **GET** /merchants/{clientid} | List Merchants Request
[**ping_request**](OperationalApi.md#ping_request) | **POST** /ping | Ping Request



## list_merchants_request

> ListMerchantsResponse list_merchants_request(clientid)

List Merchants Request

An operational request to list current merchants for a client.  ### Sorting  Sorting can be performed by include a query parameter i.e. `/merchants/?sort=merchantid`  Fields that can be sorted are `merchantid` or `name`. 

### Example

```ruby
# load the gem
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  # Configure API key authorization: cp-api-key
  config.api_key['cp-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cp-api-key'] = 'Bearer'
end

api_instance = CityPayApiClient::OperationalApi.new
clientid = 'clientid_example' # String | The client id to return merchants for, specifying \"default\" will use the value in your api key.

begin
  #List Merchants Request
  result = api_instance.list_merchants_request(clientid)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Exception when calling OperationalApi->list_merchants_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientid** | **String**| The client id to return merchants for, specifying \&quot;default\&quot; will use the value in your api key. | 

### Return type

[**ListMerchantsResponse**](ListMerchantsResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/xml


## ping_request

> Acknowledgement ping_request(ping)

Ping Request

A ping request which performs a connection and authentication test to the CityPay API server. The request will return a standard Acknowledgement with a response code `044` to signify a successful ping.  The ping call is useful to confirm that you will be able to access  the API from behind any firewalls and that the permission model is granting access from your source. 

### Example

```ruby
# load the gem
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  # Configure API key authorization: cp-api-key
  config.api_key['cp-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cp-api-key'] = 'Bearer'
end

api_instance = CityPayApiClient::OperationalApi.new
ping = CityPayApiClient::Ping.new # Ping | 

begin
  #Ping Request
  result = api_instance.ping_request(ping)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Exception when calling OperationalApi->ping_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ping** | [**Ping**](Ping.md)|  | 

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml

