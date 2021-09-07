# CityPayApiClient::RefundRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to refund in the lowest unit of currency with a variable length to a maximum of 12 digits.  The amount should be the total amount required to refund for the transaction up to the original processed amount.  No decimal points are to be included and no divisional characters such as 1,024.  For example with GBP £1,021.95 the amount value is 102195.  |  |
| **identifier** | **String** | The identifier of the refund to process. The value should be a valid reference and may be used to perform  post processing actions and to aid in reconciliation of transactions.  The value should be a valid printable string with ASCII character ranges from 0x32 to 0x127.  The identifier is recommended to be distinct for each transaction such as a [random unique identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier) this will aid in ensuring each transaction is identifiable.  When transactions are processed they are also checked for duplicate requests. Changing the identifier on a subsequent request will ensure that a transaction is considered as different.  |  |
| **merchantid** | **Integer** | Identifies the merchant account to perform the refund for. |  |
| **refund_ref** | **Integer** | A reference to the original transaction number that is wanting to be refunded. The original  transaction must be on the same merchant id, previously authorised.  |  |
| **trans_info** | **String** | Further information that can be added to the transaction will display in reporting. Can be used for flexible values such as operator id. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RefundRequest.new(
  amount: 3600,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  merchantid: 11223344,
  refund_ref: 8322,
  trans_info: null
)
```

