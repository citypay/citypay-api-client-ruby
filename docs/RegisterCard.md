# CityPayApiClient::RegisterCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cardnumber** | **String** | The primary number of the card. |  |
| **default** | **Boolean** | Determines whether the card should be the new default card. | [optional] |
| **expmonth** | **Integer** | The expiry month of the card. |  |
| **expyear** | **Integer** | The expiry year of the card. |  |
| **name_on_card** | **String** | The card holder name as it appears on the card. The value is required if the account is to be used for 3dsv2 processing, otherwise it is optional. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RegisterCard.new(
  cardnumber: 4000 0000 0000 0002,
  default: null,
  expmonth: 9,
  expyear: 2025,
  name_on_card: MR NE BODY
)
```

