# CityPayApiClient::BatchProcessingApi

All URIs are relative to *https://api.citypay.com/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_process_request**](BatchProcessingApi.md#batch_process_request) | **POST** /batch/process | Batch Process Request |
| [**check_batch_status_request**](BatchProcessingApi.md#check_batch_status_request) | **POST** /batch/status | CheckBatchStatus |
| [**get_batch_report_request**](BatchProcessingApi.md#get_batch_report_request) | **POST** /batch/retrieve | BatchReportRequest |


## batch_process_request

> <ProcessBatchResponse> batch_process_request(process_batch_request)

Batch Process Request

A batch process request is used to start the batch process workflow by uploading batch data and initialising a new batch for processing. Once validated the batch will be queued for processing and further updates can be received by a subsequent call to retrieve the batch status. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::BatchProcessingApi.new
process_batch_request = CityPayApiClient::ProcessBatchRequest.new({batch_date: Date.parse('Thu Jan 02 00:00:00 UTC 2020'), batch_id: [1975], transactions: [CityPayApiClient::BatchTransaction.new({account_id: 'aaabbb-cccddd-eee', amount: 3600})]}) # ProcessBatchRequest | 

begin
  # Batch Process Request
  result = api_instance.batch_process_request(process_batch_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling BatchProcessingApi->batch_process_request: #{e}"
end
```

#### Using the batch_process_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcessBatchResponse>, Integer, Hash)> batch_process_request_with_http_info(process_batch_request)

```ruby
begin
  # Batch Process Request
  data, status_code, headers = api_instance.batch_process_request_with_http_info(process_batch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcessBatchResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling BatchProcessingApi->batch_process_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **process_batch_request** | [**ProcessBatchRequest**](ProcessBatchRequest.md) |  |  |

### Return type

[**ProcessBatchResponse**](ProcessBatchResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## check_batch_status_request

> <CheckBatchStatusResponse> check_batch_status_request(check_batch_status)

CheckBatchStatus

The operation is used to retrieve the status of a batch process.

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::BatchProcessingApi.new
check_batch_status = CityPayApiClient::CheckBatchStatus.new({batch_id: [1975]}) # CheckBatchStatus | 

begin
  # CheckBatchStatus
  result = api_instance.check_batch_status_request(check_batch_status)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling BatchProcessingApi->check_batch_status_request: #{e}"
end
```

#### Using the check_batch_status_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckBatchStatusResponse>, Integer, Hash)> check_batch_status_request_with_http_info(check_batch_status)

```ruby
begin
  # CheckBatchStatus
  data, status_code, headers = api_instance.check_batch_status_request_with_http_info(check_batch_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckBatchStatusResponse>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling BatchProcessingApi->check_batch_status_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_batch_status** | [**CheckBatchStatus**](CheckBatchStatus.md) |  |  |

### Return type

[**CheckBatchStatusResponse**](CheckBatchStatusResponse.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## get_batch_report_request

> <BatchReportResponseModel> get_batch_report_request(batch_report_request)

BatchReportRequest

The operation is used to retrieve a report of the result of a batch process.

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::BatchProcessingApi.new
batch_report_request = CityPayApiClient::BatchReportRequest.new({batch_id: [1975]}) # BatchReportRequest | 

begin
  # BatchReportRequest
  result = api_instance.get_batch_report_request(batch_report_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling BatchProcessingApi->get_batch_report_request: #{e}"
end
```

#### Using the get_batch_report_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchReportResponseModel>, Integer, Hash)> get_batch_report_request_with_http_info(batch_report_request)

```ruby
begin
  # BatchReportRequest
  data, status_code, headers = api_instance.get_batch_report_request_with_http_info(batch_report_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchReportResponseModel>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling BatchProcessingApi->get_batch_report_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_report_request** | [**BatchReportRequest**](BatchReportRequest.md) |  |  |

### Return type

[**BatchReportResponseModel**](BatchReportResponseModel.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml

