# CityPayApiClient::CheckBatchStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The batch account id to obtain the batch for. Defaults to your client id if not provided. | [optional] |
| **batch_id** | **Integer** | The batch id to obtain the status for. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::CheckBatchStatus.new(
  account_id: AC1,
  batch_id: 1975
)
```

