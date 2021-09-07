# CityPayApiClient::ProcessBatchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Information regarding the processing request. | [optional] |
| **valid** | **Boolean** | true if the request has been accepted for processing and is valid. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::ProcessBatchResponse.new(
  message: Approved 044332,
  valid: true
)
```

