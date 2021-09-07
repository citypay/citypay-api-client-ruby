# CityPayApiClient::AccountCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | A card holder account id used for uniquely identifying the account. This value will be used for future referencing of the account oand to link your system to this API. This value is immutable and never changes.  |  |
| **contact** | [**ContactDetails**](ContactDetails.md) |  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::AccountCreate.new(
  account_id: aaabbb-cccddd-eee,
  contact: null
)
```

