# CityPayApiClient::OperationalApi

All URIs are relative to *https://api.citypay.com/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**acl_check_request**](OperationalApi.md#acl_check_request) | **POST** /acl/check | ACL Check Request |
| [**list_merchants_request**](OperationalApi.md#list_merchants_request) | **GET** /merchants/{clientid} | List Merchants Request |
| [**ping_request**](OperationalApi.md#ping_request) | **POST** /ping | Ping Request |


## acl_check_request

> <AclCheckResponseModel> acl_check_request(acl_check_request)

ACL Check Request

Allows the checking of IP addresses against configured ACLs. Requests can perform a lookup of addresses in subnets and services such as AWS or Azure to check that those addresses are listed in the ACLs. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::OperationalApi.new
acl_check_request = CityPayApiClient::AclCheckRequest.new # AclCheckRequest | 

begin
  # ACL Check Request
  result = api_instance.acl_check_request(acl_check_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalApi->acl_check_request: #{e}"
end
```

#### Using the acl_check_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AclCheckResponseModel>, Integer, Hash)> acl_check_request_with_http_info(acl_check_request)

```ruby
begin
  # ACL Check Request
  data, status_code, headers = api_instance.acl_check_request_with_http_info(acl_check_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AclCheckResponseModel>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalApi->acl_check_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_check_request** | [**AclCheckRequest**](AclCheckRequest.md) |  |  |

### Return type

[**AclCheckResponseModel**](AclCheckResponseModel.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## list_merchants_request

> <ListMerchantsResponse> list_merchants_request(clientid)

List Merchants Request

An operational request to list current merchants for a client.  ### Sorting  Sorting can be performed by include a query parameter i.e. `/merchants/?sort=merchantid`  Fields that can be sorted are `merchantid` or `name`. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::OperationalApi.new
clientid = 'clientid_example' # String | The client id to return merchants for, specifying \"default\" will use the value in your api key.

begin
  # List Merchants Request
  result = api_instance.list_merchants_request(clientid)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalApi->list_merchants_request: #{e}"
end
```

#### Using the list_merchants_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMerchantsResponse>, Integer, Hash)> list_merchants_request_with_http_info(clientid)

```ruby
begin
  # List Merchants Request
  data, status_code, headers = api_instance.list_merchants_request_with_http_info(clientid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMerchantsResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalApi->list_merchants_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clientid** | **String** | The client id to return merchants for, specifying \&quot;default\&quot; will use the value in your api key. |  |

### Return type

[**ListMerchantsResponse**](ListMerchantsResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/xml


## ping_request

> <Acknowledgement> ping_request(ping)

Ping Request

A ping request which performs a connection and authentication test to the CityPay API server. The request will return a standard Acknowledgement with a response code `044` to signify a successful ping.  The ping call is useful to confirm that you will be able to access  the API from behind any firewalls and that the permission model is granting access from your source. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::OperationalApi.new
ping = CityPayApiClient::Ping.new # Ping | 

begin
  # Ping Request
  result = api_instance.ping_request(ping)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalApi->ping_request: #{e}"
end
```

#### Using the ping_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Acknowledgement>, Integer, Hash)> ping_request_with_http_info(ping)

```ruby
begin
  # Ping Request
  data, status_code, headers = api_instance.ping_request_with_http_info(ping)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Acknowledgement>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalApi->ping_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ping** | [**Ping**](Ping.md) |  |  |

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml

