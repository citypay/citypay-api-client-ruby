# CityPayApiClient::ReportingApi

All URIs are relative to *https://api.citypay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batched_transaction_report_request**](ReportingApi.md#batched_transaction_report_request) | **POST** /v6/merchant-batch/{merchantid}/{batch_no}/transactions | Batch Transaction Report Request |
| [**merchant_batch_report_request**](ReportingApi.md#merchant_batch_report_request) | **POST** /v6/merchant-batch/report | Merchant Batch Report Request |
| [**merchant_batch_request**](ReportingApi.md#merchant_batch_request) | **GET** /v6/merchant-batch/{merchantid}/{batch_no} | Merchant Batch Request |
| [**remittance_range_report**](ReportingApi.md#remittance_range_report) | **POST** /v6/remittance/report/{clientid} | Remittance Report Request |
| [**remittance_report_request**](ReportingApi.md#remittance_report_request) | **GET** /v6/remittance/report/{clientid}/{date} | Remittance Date Report Request |


## batched_transaction_report_request

> <BatchTransactionReportResponse> batched_transaction_report_request(merchantid, batch_no, batch_transaction_report_request)

Batch Transaction Report Request

Retrieves transactions available on a given batch.

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::ReportingApi.new
merchantid = 56 # Integer | A merchant ID (MID) for which data is requested. This field allows for filtering of the request by a specific merchant account.
batch_no = 'batch_no_example' # String | The batch number that is being requested.
batch_transaction_report_request = CityPayApiClient::BatchTransactionReportRequest.new # BatchTransactionReportRequest | 

begin
  # Batch Transaction Report Request
  result = api_instance.batched_transaction_report_request(merchantid, batch_no, batch_transaction_report_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->batched_transaction_report_request: #{e}"
end
```

#### Using the batched_transaction_report_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchTransactionReportResponse>, Integer, Hash)> batched_transaction_report_request_with_http_info(merchantid, batch_no, batch_transaction_report_request)

```ruby
begin
  # Batch Transaction Report Request
  data, status_code, headers = api_instance.batched_transaction_report_request_with_http_info(merchantid, batch_no, batch_transaction_report_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchTransactionReportResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->batched_transaction_report_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchantid** | **Integer** | A merchant ID (MID) for which data is requested. This field allows for filtering of the request by a specific merchant account. |  |
| **batch_no** | **String** | The batch number that is being requested. |  |
| **batch_transaction_report_request** | [**BatchTransactionReportRequest**](BatchTransactionReportRequest.md) |  |  |

### Return type

[**BatchTransactionReportResponse**](BatchTransactionReportResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## merchant_batch_report_request

> <MerchantBatchReportResponse> merchant_batch_report_request(merchant_batch_report_request)

Merchant Batch Report Request

Retrieves a report of merchant batches within a specified date range. 
Batches, which aggregate daily processing activities, are typically generated at `00:00` each day. 
These batches play a crucial role in the settlement of funds by summarising daily transactions.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::ReportingApi.new
merchant_batch_report_request = CityPayApiClient::MerchantBatchReportRequest.new # MerchantBatchReportRequest | 

begin
  # Merchant Batch Report Request
  result = api_instance.merchant_batch_report_request(merchant_batch_report_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->merchant_batch_report_request: #{e}"
end
```

#### Using the merchant_batch_report_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantBatchReportResponse>, Integer, Hash)> merchant_batch_report_request_with_http_info(merchant_batch_report_request)

```ruby
begin
  # Merchant Batch Report Request
  data, status_code, headers = api_instance.merchant_batch_report_request_with_http_info(merchant_batch_report_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantBatchReportResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->merchant_batch_report_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_batch_report_request** | [**MerchantBatchReportRequest**](MerchantBatchReportRequest.md) |  |  |

### Return type

[**MerchantBatchReportResponse**](MerchantBatchReportResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## merchant_batch_request

> <MerchantBatchResponse> merchant_batch_request(merchantid, batch_no)

Merchant Batch Request

Retrieves a report of merchant a merchant batch for a specified batch number.

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::ReportingApi.new
merchantid = 56 # Integer | A merchant ID (MID) for which data is requested. This field allows for filtering of the request by a specific merchant account.
batch_no = 'batch_no_example' # String | The batch number that is being requested.

begin
  # Merchant Batch Request
  result = api_instance.merchant_batch_request(merchantid, batch_no)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->merchant_batch_request: #{e}"
end
```

#### Using the merchant_batch_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantBatchResponse>, Integer, Hash)> merchant_batch_request_with_http_info(merchantid, batch_no)

```ruby
begin
  # Merchant Batch Request
  data, status_code, headers = api_instance.merchant_batch_request_with_http_info(merchantid, batch_no)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantBatchResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->merchant_batch_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchantid** | **Integer** | A merchant ID (MID) for which data is requested. This field allows for filtering of the request by a specific merchant account. |  |
| **batch_no** | **String** | The batch number that is being requested. |  |

### Return type

[**MerchantBatchResponse**](MerchantBatchResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/xml


## remittance_range_report

> <RemittanceReportResponse> remittance_range_report(clientid, remittance_report_request)

Remittance Report Request

Fetches remittance reports for financial transactions within a specified date range,
covering all client-related activities. This report consolidates all batches disbursed to a
client, with each remittance summarising the aggregation of batches leading up to settlement.
Additionally, the net remittance amount presented in the final settlement will reflect any
deductions made by the acquirer.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::ReportingApi.new
clientid = 'clientid_example' # String | A client Id for which data is requested.
remittance_report_request = CityPayApiClient::RemittanceReportRequest.new # RemittanceReportRequest | 

begin
  # Remittance Report Request
  result = api_instance.remittance_range_report(clientid, remittance_report_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->remittance_range_report: #{e}"
end
```

#### Using the remittance_range_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemittanceReportResponse>, Integer, Hash)> remittance_range_report_with_http_info(clientid, remittance_report_request)

```ruby
begin
  # Remittance Report Request
  data, status_code, headers = api_instance.remittance_range_report_with_http_info(clientid, remittance_report_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemittanceReportResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->remittance_range_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clientid** | **String** | A client Id for which data is requested. |  |
| **remittance_report_request** | [**RemittanceReportRequest**](RemittanceReportRequest.md) |  |  |

### Return type

[**RemittanceReportResponse**](RemittanceReportResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## remittance_report_request

> <RemittedClientData> remittance_report_request(clientid, date)

Remittance Date Report Request

Fetches remittance reports for financial transactions for a given date, 
covering all client-related activities. This report consolidates all batches disbursed to a 
client, with each remittance summarising the aggregation of batches leading up to settlement. 
Additionally, the net remittance amount presented in the final settlement will reflect any 
deductions made by the acquirer.

The process also supports the notion of *today* deferring the date to today's date or *latest* reflecting the
latest remittance date available.


### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::ReportingApi.new
clientid = 'clientid_example' # String | A client Id for which data is requested.
date = 'date_example' # String | Date (YYYY-MM-DD) to filter the request for.

begin
  # Remittance Date Report Request
  result = api_instance.remittance_report_request(clientid, date)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->remittance_report_request: #{e}"
end
```

#### Using the remittance_report_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemittedClientData>, Integer, Hash)> remittance_report_request_with_http_info(clientid, date)

```ruby
begin
  # Remittance Date Report Request
  data, status_code, headers = api_instance.remittance_report_request_with_http_info(clientid, date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemittedClientData>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling ReportingApi->remittance_report_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clientid** | **String** | A client Id for which data is requested. |  |
| **date** | **String** | Date (YYYY-MM-DD) to filter the request for. |  |

### Return type

[**RemittedClientData**](RemittedClientData.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/xml

