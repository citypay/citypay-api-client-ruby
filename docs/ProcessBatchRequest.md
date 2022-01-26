# CityPayApiClient::ProcessBatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_date** | **Date** | The date and time that the file was created in ISO-8601 format. |  |
| **batch_id** | **Array&lt;Integer&gt;** |  |  |
| **client_account_id** | **String** | The batch account id to process the batch for. Defaults to your client id if not provided. | [optional] |
| **transactions** | [**Array&lt;BatchTransaction&gt;**](BatchTransaction.md) |  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::ProcessBatchRequest.new(
  batch_date: Thu Jan 02 00:00:00 UTC 2020,
  batch_id: null,
  client_account_id: AC1,
  transactions: null
)
```

