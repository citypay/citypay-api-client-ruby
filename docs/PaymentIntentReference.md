# CityPayApiClient::PaymentIntentReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** | The intent id used for future referencing of the intent. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaymentIntentReference.new(
  payment_intent_id: p13t1111222233334444
)
```

