# CityPayApiClient::DomainKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Time** | The date the domain key was generated.  | [optional] |
| **domain** | **Array&lt;String&gt;** |  |  |
| **domain_key** | **String** | The domain key generated.  | [optional] |
| **live** | **Boolean** | true if this key is a production key.  | [optional] |
| **merchantid** | **Integer** | The merchant id the domain key is to be used for.  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::DomainKeyResponse.new(
  date_created: 2020-01-02T18:32:28Z,
  domain: null,
  domain_key: 3MEcU8cEf...QMeebACxcQVejmT1Wi,
  live: true,
  merchantid: 11223344
)
```

