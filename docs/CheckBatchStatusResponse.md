# CityPayApiClient::CheckBatchStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_date** | **Time** | The date and time that the file was created in ISO-8601 format. |  |
| **batch_id** | **Integer** | The batch id requested. | [optional] |
| **batch_status** | **String** | The status of the batch. Possible values are. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::CheckBatchStatusResponse.new(
  batch_date: 2020-01-02T18:32:28Z,
  batch_id: 1975,
  batch_status: COMPLETE
)
```

