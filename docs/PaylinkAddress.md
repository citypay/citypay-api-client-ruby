# CityPayApiClient::PaylinkAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address1** | **String** | The first line of the address. | [optional] |
| **address2** | **String** | The second line of the address. | [optional] |
| **address3** | **String** | The third line of the address. | [optional] |
| **area** | **String** | The area such as city, department, town or parish. | [optional] |
| **country** | **String** | The country code in ISO 3166 format. The country code should be an ISO-3166 2 or 3 digit country code. | [optional] |
| **label** | **String** | A label for the address such as Head Office, Home Address. | [optional] |
| **postcode** | **String** | The postcode or zip code of the address. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkAddress.new(
  address1: 79 Parliament St,
  address2: Westminster,
  address3: null,
  area: London,
  country: GB,
  label: Head Office,
  postcode: L1 789
)
```

