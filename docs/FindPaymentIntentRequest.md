# CityPayApiClient::FindPaymentIntentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_ref** | **String** | An external reference to lookup. | [optional] |
| **external_ref_source** | **String** | An external reference source to lookup. | [optional] |
| **merchantid** | **Integer** | The merchant id the payment intent is registered for. | [optional] |
| **payment_intent_id** | **String** | The payment intent id, if known. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::FindPaymentIntentRequest.new(
  external_ref: ABC123,
  external_ref_source: xero,
  merchantid: 11223344,
  payment_intent_id: p13t1111222233334444
)
```

