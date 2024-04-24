# CityPayApiClient::DirectPostApi

All URIs are relative to *https://api.citypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**direct_c_res_auth_request**](DirectPostApi.md#direct_c_res_auth_request) | **POST** /direct/cres/auth/{uuid} | Handles a CRes response from ACS, returning back the result of authorisation |
| [**direct_c_res_tokenise_request**](DirectPostApi.md#direct_c_res_tokenise_request) | **POST** /direct/cres/tokenise/{uuid} | Handles a CRes response from ACS, returning back a token for future authorisation |
| [**direct_post_auth_request**](DirectPostApi.md#direct_post_auth_request) | **POST** /direct/auth | Direct Post Auth Request |
| [**direct_post_tokenise_request**](DirectPostApi.md#direct_post_tokenise_request) | **POST** /direct/tokenise | Direct Post Tokenise Request |
| [**token_request**](DirectPostApi.md#token_request) | **POST** /direct/token | Direct Post Token Request |


## direct_c_res_auth_request

> <AuthResponse> direct_c_res_auth_request(uuid, opts)

Handles a CRes response from ACS, returning back the result of authorisation

Used to post from an ACS during a ThreeDSecure direct flow process. The endpoint requires a valid `threeDSSessionData`
value which defines the unique transaction through its workflow. This endpoint may be used by merchants wishing to
perform a `Direct Post` integration who wish to handle the challenge flow themselves.


### Examples

```ruby
require 'time'
require 'citypay_api_client'

api_instance = CityPayApiClient::DirectPostApi.new
uuid = 'uuid_example' # String | An identifier used to track the CReq/CRes cycle.
opts = {
  cres: 'cres_example', # String | The CRES from the ACS.
  three_ds_session_data: 'three_ds_session_data_example' # String | The session data from the ACS.
}

begin
  # Handles a CRes response from ACS, returning back the result of authorisation
  result = api_instance.direct_c_res_auth_request(uuid, opts)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->direct_c_res_auth_request: #{e}"
end
```

#### Using the direct_c_res_auth_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> direct_c_res_auth_request_with_http_info(uuid, opts)

```ruby
begin
  # Handles a CRes response from ACS, returning back the result of authorisation
  data, status_code, headers = api_instance.direct_c_res_auth_request_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->direct_c_res_auth_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | An identifier used to track the CReq/CRes cycle. |  |
| **cres** | **String** | The CRES from the ACS. | [optional] |
| **three_ds_session_data** | **String** | The session data from the ACS. | [optional] |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json, application/xml, application/x-www-form-urlencoded


## direct_c_res_tokenise_request

> <TokenisationResponseModel> direct_c_res_tokenise_request(uuid, opts)

Handles a CRes response from ACS, returning back a token for future authorisation

Used to post from an ACS during a ThreeDSecure direct flow process. The endpoint requires a valid `threeDSSessionData`
value which defines the unique transaction through its workflow. This endpoint may be used by merchants wishing to
perform a `Direct Post` integration who wish to handle the challenge flow themselves.


### Examples

```ruby
require 'time'
require 'citypay_api_client'

api_instance = CityPayApiClient::DirectPostApi.new
uuid = 'uuid_example' # String | An identifier used to track the CReq/CRes cycle.
opts = {
  cres: 'cres_example', # String | The CRES from the ACS.
  three_ds_session_data: 'three_ds_session_data_example' # String | The session data from the ACS.
}

begin
  # Handles a CRes response from ACS, returning back a token for future authorisation
  result = api_instance.direct_c_res_tokenise_request(uuid, opts)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->direct_c_res_tokenise_request: #{e}"
end
```

#### Using the direct_c_res_tokenise_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenisationResponseModel>, Integer, Hash)> direct_c_res_tokenise_request_with_http_info(uuid, opts)

```ruby
begin
  # Handles a CRes response from ACS, returning back a token for future authorisation
  data, status_code, headers = api_instance.direct_c_res_tokenise_request_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenisationResponseModel>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->direct_c_res_tokenise_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | An identifier used to track the CReq/CRes cycle. |  |
| **cres** | **String** | The CRES from the ACS. | [optional] |
| **three_ds_session_data** | **String** | The session data from the ACS. | [optional] |

### Return type

[**TokenisationResponseModel**](TokenisationResponseModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json, application/xml, application/x-www-form-urlencoded


## direct_post_auth_request

> <AuthResponse> direct_post_auth_request(direct_post_request)

Direct Post Auth Request

Used to initiate a direct post request transaction flow.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  # Configure API key authorization: cp-domain-key
  config.api_key['cp-domain-key'] = 'YOUR API KEY'

  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::DirectPostApi.new
direct_post_request = CityPayApiClient::DirectPostRequest.new({amount: 19995, cardnumber: '4000 0000 0000 0002', expmonth: 9, expyear: 2027, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95', mac: '3896FBC43674AF59478DAF7F546FA4D4CB89981A936E6AAE997E43B55DF6C39D'}) # DirectPostRequest | 

begin
  # Direct Post Auth Request
  result = api_instance.direct_post_auth_request(direct_post_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->direct_post_auth_request: #{e}"
end
```

#### Using the direct_post_auth_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> direct_post_auth_request_with_http_info(direct_post_request)

```ruby
begin
  # Direct Post Auth Request
  data, status_code, headers = api_instance.direct_post_auth_request_with_http_info(direct_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->direct_post_auth_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **direct_post_request** | [**DirectPostRequest**](DirectPostRequest.md) |  |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[cp-domain-key](../README.md#cp-domain-key), [cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, text/xml
- **Accept**: application/json, application/xml, application/x-www-form-urlencoded, text/xml


## direct_post_tokenise_request

> <AuthResponse> direct_post_tokenise_request(direct_post_request)

Direct Post Tokenise Request

Used to initiate a direct post request transaction flow.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  # Configure API key authorization: cp-domain-key
  config.api_key['cp-domain-key'] = 'YOUR API KEY'

  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::DirectPostApi.new
direct_post_request = CityPayApiClient::DirectPostRequest.new({amount: 19995, cardnumber: '4000 0000 0000 0002', expmonth: 9, expyear: 2027, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95', mac: '3896FBC43674AF59478DAF7F546FA4D4CB89981A936E6AAE997E43B55DF6C39D'}) # DirectPostRequest | 

begin
  # Direct Post Tokenise Request
  result = api_instance.direct_post_tokenise_request(direct_post_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->direct_post_tokenise_request: #{e}"
end
```

#### Using the direct_post_tokenise_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> direct_post_tokenise_request_with_http_info(direct_post_request)

```ruby
begin
  # Direct Post Tokenise Request
  data, status_code, headers = api_instance.direct_post_tokenise_request_with_http_info(direct_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->direct_post_tokenise_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **direct_post_request** | [**DirectPostRequest**](DirectPostRequest.md) |  |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[cp-domain-key](../README.md#cp-domain-key), [cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, text/xml
- **Accept**: application/json, application/xml, application/x-www-form-urlencoded, text/xml


## token_request

> <AuthResponse> token_request(direct_token_auth_request)

Direct Post Token Request

Perform a request for authorisation for a previously generated token. This flow will return an authorisation
response stating that the transaction was approved or declined.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  # Configure API key authorization: cp-domain-key
  config.api_key['cp-domain-key'] = 'YOUR API KEY'

  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::DirectPostApi.new
direct_token_auth_request = CityPayApiClient::DirectTokenAuthRequest.new # DirectTokenAuthRequest | 

begin
  # Direct Post Token Request
  result = api_instance.token_request(direct_token_auth_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->token_request: #{e}"
end
```

#### Using the token_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> token_request_with_http_info(direct_token_auth_request)

```ruby
begin
  # Direct Post Token Request
  data, status_code, headers = api_instance.token_request_with_http_info(direct_token_auth_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling DirectPostApi->token_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **direct_token_auth_request** | [**DirectTokenAuthRequest**](DirectTokenAuthRequest.md) |  |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[cp-domain-key](../README.md#cp-domain-key), [cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, text/xml
- **Accept**: application/json, application/xml, application/x-www-form-urlencoded, text/xml

