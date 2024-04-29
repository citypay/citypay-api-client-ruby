# CityPayApiClient::RemittanceData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | Represents the date and time when the remittance was processed. This timestamp follows the ISO 8601 format for datetime representation. | [optional] |
| **net_amount** | **Integer** | Represents the net amount after accounting for refunds. This is calculated as SalesAmount - RefundAmount and expressed in the smallest currency unit. | [optional] |
| **refund_amount** | **Integer** | The total amount refunded to customers. | [optional] |
| **refund_count** | **Integer** | The total number of refund transactions processed. This figure helps in understanding the frequency of refunds relative to sales. | [optional] |
| **sales_amount** | **Integer** | The total monetary amount of sales transactions. | [optional] |
| **sales_count** | **Integer** | Indicates the total number of sales transactions that occurred. This count provides insight into the volume of sales. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RemittanceData.new(
  date_created: 2020-01-02T18:32:28Z,
  net_amount: 11874500,
  refund_amount: 11874500,
  refund_count: 11874500,
  sales_amount: 11874500,
  sales_count: 11874500
)
```

