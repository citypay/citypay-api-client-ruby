# CityPayApiClient::CardHolderAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account id of the card holder account provided by the merchant which uniquely identifies the account.  |  |
| **cards** | [**Array&lt;Card&gt;**](Card.md) |  | [optional] |
| **contact** | [**ContactDetails**](ContactDetails.md) |  |  |
| **date_created** | **Time** | The date and time the account was created. | [optional] |
| **default_card_id** | **String** | The id of the default card. | [optional] |
| **default_card_index** | **Integer** | The index in the array of the default card. | [optional] |
| **last_modified** | [**Time**](DateTime.md) | The date and time the account was last modified. | [optional] |
| **status** | **String** | Defines the status of the account for processing valid values are   - ACTIVE for active accounts that are able to process   - DISABLED for accounts that are currently disabled for processing.  | [optional] |
| **unique_id** | **String** | A unique id of the card holder account which uniquely identifies the stored account. This value is not searchable. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::CardHolderAccount.new(
  account_id: aaabbb-cccddd-eee,
  cards: null,
  contact: null,
  date_created: 2020-01-02T18:32:28Z,
  default_card_id: null,
  default_card_index: null,
  last_modified: 2020-01-02T18:32:28Z,
  status: null,
  unique_id: null
)
```

