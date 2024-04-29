# CityPayApiClient::RemittedClientData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batches** | [**Array&lt;MerchantBatchResponse&gt;**](MerchantBatchResponse.md) |  |  |
| **clientid** | **String** | The client id that the remittance data is for. | [optional] |
| **date** | **Date** | The date of the remittance. | [optional] |
| **date_created** | **Time** | The date time that the remittance was created. | [optional] |
| **net_amount** | **Integer** | Represents the net amount after accounting for refunds. This is calculated as SalesAmount - RefundAmount and expressed in the smallest currency unit. | [optional] |
| **processed_amount** | **Integer** | The total monetary amount processed consisting of sale and refund transactions. | [optional] |
| **processed_count** | **Integer** | Indicates the total number of sales and refund transactions that occurred. This count provides insight into the volume of processing. | [optional] |
| **refund_amount** | **Integer** | The total amount refunded to customers. | [optional] |
| **refund_count** | **Integer** | The total number of refund transactions processed. This figure helps in understanding the frequency of refunds relative to sales. | [optional] |
| **remittances** | [**Array&lt;RemittanceData&gt;**](RemittanceData.md) |  |  |
| **sales_amount** | **Integer** | The total monetary amount of sales transactions. | [optional] |
| **sales_count** | **Integer** | Indicates the total number of sales transactions that occurred. This count provides insight into the volume of sales. | [optional] |
| **settlement_implementation** | **String** | The name of the implementation. | [optional] |
| **uuid** | **String** | The uuid of the settlement file processed on. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RemittedClientData.new(
  batches: null,
  clientid: PC12345,
  date: Thu Jan 02 00:00:00 UTC 2020,
  date_created: 2020-01-02T18:32:28Z,
  net_amount: 11874500,
  processed_amount: 11874500,
  processed_count: 11874500,
  refund_amount: 11874500,
  refund_count: 11874500,
  remittances: null,
  sales_amount: 11874500,
  sales_count: 11874500,
  settlement_implementation: null,
  uuid: 123e4567-e89b-12d3-a456-426614174000
)
```

