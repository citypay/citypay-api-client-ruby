# CityPayApiClient::BatchReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **Array&lt;Integer&gt;** |  |  |
| **client_account_id** | **String** | The batch account id that the batch was processed for. Defaults to your client id if not provided. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::BatchReportRequest.new(
  batch_id: null,
  client_account_id: AC1
)
```

