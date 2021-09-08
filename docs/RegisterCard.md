# CityPayApiClient::RegisterCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cardnumber** | **String** | The primary number of the card. |  |
| **default** | **Boolean** | Determines whether the card should be the new default card. | [optional] |
| **expmonth** | **Integer** | The expiry month of the card. |  |
| **expyear** | **Integer** | The expiry year of the card. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RegisterCard.new(
  cardnumber: 4000 0000 0000 0002,
  default: null,
  expmonth: 9,
  expyear: 2024
)
```

