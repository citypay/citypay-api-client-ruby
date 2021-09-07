# CityPayApiClient::BatchReportResponseModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The batch account id that the batch was processed with. |  |
| **amount** | **Integer** | The total amount that the batch contains. |  |
| **batch_date** | **Time** | The date and time of the batch in ISO-8601 format. |  |
| **batch_id** | **Integer** | The batch id specified in the batch processing request. |  |
| **batch_status** | **String** | The status of the batch. Possible values are. |  |
| **transactions** | [**Array&lt;BatchTransactionResultModel&gt;**](BatchTransactionResultModel.md) |  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::BatchReportResponseModel.new(
  account_id: AC1,
  amount: 3600,
  batch_date: 2020-01-02T18:32:28Z,
  batch_id: 1975,
  batch_status: COMPLETE,
  transactions: null
)
```

