# CityPayApiClient::OperationalFunctionsApi

All URIs are relative to *https://api.citypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**acl_check_request**](OperationalFunctionsApi.md#acl_check_request) | **POST** /v6/acl/check | ACL Check Request |
| [**domain_key_check_request**](OperationalFunctionsApi.md#domain_key_check_request) | **POST** /dk/check | Domain Key Check Request |
| [**domain_key_gen_request**](OperationalFunctionsApi.md#domain_key_gen_request) | **POST** /dk/gen | Domain Key Generation Request |
| [**list_merchants_request**](OperationalFunctionsApi.md#list_merchants_request) | **GET** /v6/merchants/{clientid} | List Merchants Request |
| [**ping_request**](OperationalFunctionsApi.md#ping_request) | **POST** /v6/ping | Ping Request |


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

api_instance = CityPayApiClient::OperationalFunctionsApi.new
acl_check_request = CityPayApiClient::AclCheckRequest.new({ip: '8.8.8.8'}) # AclCheckRequest | 

begin
  # ACL Check Request
  result = api_instance.acl_check_request(acl_check_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalFunctionsApi->acl_check_request: #{e}"
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
  puts "Error when calling OperationalFunctionsApi->acl_check_request_with_http_info: #{e}"
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


## domain_key_check_request

> <DomainKeyResponse> domain_key_check_request(domain_key_check_request)

Domain Key Check Request

Checks the contents of a `domain key`. Can be used for operational processes to ensure that the properties of a  domain key meet their expectations. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::OperationalFunctionsApi.new
domain_key_check_request = CityPayApiClient::DomainKeyCheckRequest.new({domain_key: '3MEcU8cEf...QMeebACxcQVejmT1Wi'}) # DomainKeyCheckRequest | 

begin
  # Domain Key Check Request
  result = api_instance.domain_key_check_request(domain_key_check_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalFunctionsApi->domain_key_check_request: #{e}"
end
```

#### Using the domain_key_check_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainKeyResponse>, Integer, Hash)> domain_key_check_request_with_http_info(domain_key_check_request)

```ruby
begin
  # Domain Key Check Request
  data, status_code, headers = api_instance.domain_key_check_request_with_http_info(domain_key_check_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainKeyResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalFunctionsApi->domain_key_check_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_key_check_request** | [**DomainKeyCheckRequest**](DomainKeyCheckRequest.md) |  |  |

### Return type

[**DomainKeyResponse**](DomainKeyResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## domain_key_gen_request

> <DomainKeyResponse> domain_key_gen_request(domain_key_request)

Domain Key Generation Request

Generates a domain key based on the permissions of the calling `api-key`. Domain keys can be used in _Direct Post_ and `XHR` calls to the API services. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::OperationalFunctionsApi.new
domain_key_request = CityPayApiClient::DomainKeyRequest.new({domain: ['domain_example'], merchantid: 11223344}) # DomainKeyRequest | 

begin
  # Domain Key Generation Request
  result = api_instance.domain_key_gen_request(domain_key_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalFunctionsApi->domain_key_gen_request: #{e}"
end
```

#### Using the domain_key_gen_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainKeyResponse>, Integer, Hash)> domain_key_gen_request_with_http_info(domain_key_request)

```ruby
begin
  # Domain Key Generation Request
  data, status_code, headers = api_instance.domain_key_gen_request_with_http_info(domain_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainKeyResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalFunctionsApi->domain_key_gen_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_key_request** | [**DomainKeyRequest**](DomainKeyRequest.md) |  |  |

### Return type

[**DomainKeyResponse**](DomainKeyResponse.md)

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

api_instance = CityPayApiClient::OperationalFunctionsApi.new
clientid = 'clientid_example' # String | The client id to return merchants for, specifying \"default\" will use the value in your api key.

begin
  # List Merchants Request
  result = api_instance.list_merchants_request(clientid)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalFunctionsApi->list_merchants_request: #{e}"
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
  puts "Error when calling OperationalFunctionsApi->list_merchants_request_with_http_info: #{e}"
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

  # Configure API key authorization: cp-domain-key
  config.api_key['cp-domain-key'] = 'YOUR API KEY'
end

api_instance = CityPayApiClient::OperationalFunctionsApi.new
ping = CityPayApiClient::Ping.new # Ping | 

begin
  # Ping Request
  result = api_instance.ping_request(ping)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling OperationalFunctionsApi->ping_request: #{e}"
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
  puts "Error when calling OperationalFunctionsApi->ping_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ping** | [**Ping**](Ping.md) |  |  |

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key), [cp-domain-key](../README.md#cp-domain-key)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, text/xml
- **Accept**: application/x-www-form-urlencoded, application/json, text/xml

