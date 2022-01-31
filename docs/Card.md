# CityPayApiClient::Card

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
| **card_id** | **String** | The id of the card that is returned. Should be used for referencing the card when perform any changes. | [optional] |
| **card_status** | **String** | The status of the card such, valid values are   - ACTIVE the card is active for processing   - INACTIVE the card is not active for processing   - EXPIRED for cards that have passed their expiry date.  | [optional] |
| **date_created** | **Time** | The date time of when the card was created. | [optional] |
| **default** | **Boolean** | Determines if the card is the default card for the account and should be regarded as the first option to be used for processing. | [optional] |
| **expmonth** | **Integer** | The expiry month of the card. | [optional] |
| **expyear** | **Integer** | The expiry year of the card. | [optional] |
| **label** | **String** | A label which identifies this card. | [optional] |
| **label2** | **String** | A label which also provides the expiry date of the card. | [optional] |
| **last4digits** | **String** | The last 4 digits of the card to aid in identification. | [optional] |
| **name_on_card** | **String** | The name on the card. | [optional] |
| **scheme** | **String** | The scheme that issued the card. | [optional] |
| **token** | **String** | A token that can be used to process against the card. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::Card.new(
  bin_commercial: null,
  bin_corporate: null,
  bin_country_issued: null,
  bin_credit: null,
  bin_currency: null,
  bin_debit: null,
  bin_description: Platinum Card,
  bin_eu: null,
  card_id: null,
  card_status: null,
  date_created: 2020-01-02T18:32:28Z,
  default: null,
  expmonth: 9,
  expyear: 2025,
  label: Visa/0002,
  label2: Visa/0002,Exp:2304,
  last4digits: 2,
  name_on_card: MR NE BODY,
  scheme: Visa,
  token: ctPCAPyNyCkx3Ry8wGyv8khC3ch2hUSB3Db..Qzr
)
```

