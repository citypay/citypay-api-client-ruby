# CityPayApiClient::BatchReportResponseModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The total amount that the batch contains. |  |
| **batch_date** | **Date** | The date and time of the batch in ISO-8601 format. |  |
| **batch_id** | **Integer** | The batch id specified in the batch processing request. |  |
| **batch_status** | **String** | The status of the batch. Possible values are:   - CANCELLED. The file has been cancelled by an administrator or server process.  - COMPLETE. The file has passed through the processing cycle and is determined as being complete further information should be obtained on the results of the processing - ERROR_IN_PROCESSING. Errors have occurred in the processing that has deemed that processing can not continue. - INITIALISED. The file has been initialised and no action has yet been performed - LOCKED. The file has been locked for processing - QUEUED. The file has been queued for processing yet no processing has yet been performed - UNKNOWN. The file is of an unknown status, that is the file can either not be determined by the information requested of the file has not yet been received.  |  |
| **client_account_id** | **String** | The batch account id that the batch was processed with. |  |
| **transactions** | [**Array&lt;BatchTransactionResultModel&gt;**](BatchTransactionResultModel.md) |  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::BatchReportResponseModel.new(
  amount: 19995,
  batch_date: Thu Jan 02 00:00:00 UTC 2020,
  batch_id: 35,
  batch_status: COMPLETE,
  client_account_id: AC1,
  transactions: null
)
```

