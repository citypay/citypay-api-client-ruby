# CityPayApiClient::NetSummaryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_items_amount** | **String** | The total value of refund (credit) transaction items. Represents the sum of funds returned to customers. | [optional] |
| **credit_items_count** | **Integer** | The count of refund (credit) transaction items. Reflects the number of refund transactions processed. | [optional] |
| **credit_items_value** | **Integer** | The total value of refund (credit) transaction items. Represents the sum of funds returned to customers. | [optional] |
| **debit_items_amount** | **String** | The total value of charge (debit) transaction items. Represents the sum of funds received from charges. | [optional] |
| **debit_items_count** | **Integer** | The count of charge (debit) transaction items. Indicates the number of charge transactions processed. | [optional] |
| **debit_items_value** | **Integer** | The total value of charge (debit) transaction items. Represents the sum of funds received from charges. | [optional] |
| **net_amount** | **Integer** | The absolute net value, reflecting the net gain or loss from transactions. | [optional] |
| **total_count** | **Integer** | The total count of all transaction items. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::NetSummaryResponse.new(
  credit_items_amount: £75.89,
  credit_items_count: 12345,
  credit_items_value: 11874500,
  debit_items_amount: £75.89,
  debit_items_count: 12345,
  debit_items_value: 11874500,
  net_amount: 11874500,
  total_count: 12345
)
```

