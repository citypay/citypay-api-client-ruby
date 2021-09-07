# CityPayApiClient::BatchReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The batch account id that the batch was processed for. Defaults to your client id if not provided. | [optional] |
| **batch_id** | **Integer** | The batch id specified in the batch processing request. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::BatchReportRequest.new(
  account_id: AC1,
  batch_id: 1975
)
```

