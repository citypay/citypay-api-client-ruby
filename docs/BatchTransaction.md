# CityPayApiClient::BatchTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The card holder account id to process against. |  |
| **amount** | **Integer** | The amount required to process in the lowest denomination. |  |
| **identifier** | **String** | An identifier used to reference the transaction set by your integration. The value should be used to refer to the transaction in future calls. | [optional] |
| **merchantid** | **Integer** | The CityPay merchant id used to process the transaction. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::BatchTransaction.new(
  account_id: aaabbb-cccddd-eee,
  amount: 3600,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  merchantid: 11223344
)
```

