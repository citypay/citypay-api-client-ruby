# CityPayApiClient::RetrieveRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The identifier of the transaction to retrieve. Optional if a transaction number is provided. | [optional] |
| **merchantid** | **Integer** | The merchant account to retrieve data for. |  |
| **transno** | **Integer** | The transaction number of a transaction to retrieve. Optional if an identifier is supplied. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RetrieveRequest.new(
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  merchantid: 11223344,
  transno: 78416
)
```

