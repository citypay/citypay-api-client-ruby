# CityPayApiClient::DomainKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **Array&lt;String&gt;** |  |  |
| **live** | **Boolean** | Specifies if the key is to be used for production. Defaults to false.  | [optional] |
| **merchantid** | **Integer** | The merchant id the domain key is to be used for.  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::DomainKeyRequest.new(
  domain: null,
  live: true,
  merchantid: 11223344
)
```

