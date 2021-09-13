# CityPayApiClient::Bin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bin_commercial** | **Boolean** | Defines whether the card is a commercial card. | [optional] |
| **bin_corporate** | **Boolean** | Defines whether the card is a corporate business card. | [optional] |
| **bin_country_issued** | **String** | The determined country where the card was issued. | [optional] |
| **bin_credit** | **Boolean** | Defines whether the card is a credit card. | [optional] |
| **bin_currency** | **String** | The default currency determined for the card. | [optional] |
| **bin_debit** | **Boolean** | Defines whether the card is a debit card. | [optional] |
| **bin_description** | **String** | A description of the bin on the card to identify what type of product the card is. | [optional] |
| **bin_eu** | **Boolean** | Defines whether the card is regulated within the EU. | [optional] |
| **scheme** | **String** | The scheme that issued the card. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::Bin.new(
  bin_commercial: null,
  bin_corporate: null,
  bin_country_issued: null,
  bin_credit: null,
  bin_currency: null,
  bin_debit: null,
  bin_description: Platinum Card,
  bin_eu: null,
  scheme: Visa
)
```

