# CityPayApiClient::PaylinkAdjustmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | An amount to adjust to. | [optional] |
| **identifier** | **String** | An identifier of the original request. | [optional] |
| **reason** | **String** | A textual reason for the adjustment. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkAdjustmentRequest.new(
  amount: 19995,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  reason: null
)
```

