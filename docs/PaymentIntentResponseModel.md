# CityPayApiClient::PaymentIntentResponseModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustments** | [**Adjustments**](Adjustments.md) |  | [optional] |
| **amount** | **Integer** | An amount of the intent. | [optional] |
| **created** | **Time** | A date time of when the intent was created. | [optional] |
| **currency** | **String** | The currency of the intent. | [optional] |
| **due** | **Date** | A due date of the intent. | [optional] |
| **expires** | **Date** | An expiration date of the intent. | [optional] |
| **external_ref** | **String** | An external reference of the intent. | [optional] |
| **external_ref_source** | **String** | An external reference source of the intent. | [optional] |
| **identifier** | **String** | An identifier of the intent. |  |
| **intent_status** | **String** | A status of the intent such as &#x60;unknown&#x60;, &#x60;open&#x60;, &#x60;requires_payment_method&#x60;, &#x60;requires_confirmation&#x60;, &#x60;requires_confirmation&#x60;, &#x60;requires_action&#x60;, &#x60;processing&#x60;, &#x60;succeeded&#x60;, &#x60;cancelled&#x60;, &#x60;requires_capture&#x60;, &#x60;failed&#x60;, &#x60;expired&#x60;, &#x60;requires_refund&#x60;, &#x60;refunded&#x60;. | [optional] |
| **merchantid** | **Integer** | The merchant id of the intent. |  |
| **payment_type** | **String** | A type of the intent such as &#x60;None&#x60;, &#x60;Single&#x60;, &#x60;Subscription&#x60;. | [optional] |
| **payment_intent_id** | **String** | The id of the intent. |  |
| **transactions** | [**AuthReference**](AuthReference.md) |  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaymentIntentResponseModel.new(
  adjustments: null,
  amount: 19995,
  created: 2025-07-30T15:54:29Z,
  currency: GBP,
  due: Wed Jul 30 00:00:00 UTC 2025,
  expires: Wed Jul 30 00:00:00 UTC 2025,
  external_ref: ABC123,
  external_ref_source: xero,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  intent_status: open,
  merchantid: 11223344,
  payment_type: null,
  payment_intent_id: p13t1111222233334444,
  transactions: null
)
```

