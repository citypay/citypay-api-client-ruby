# CityPayApiClient::DomainKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **Array&lt;String&gt;** |  |  |
| **live** | **Boolean** | Specifies if the key is to be used for production. Defaults to false.  | [optional] |
| **merchantid** | **Integer** | The merchant id the domain key is to be used for.  |  |
| **nonce** | **String** | Specifies a random value for integrity. The value is used to generate the domain key to provide further integrity to the key.  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::DomainKeyRequest.new(
  domain: null,
  live: true,
  merchantid: 11223344,
  nonce: 0123456789ABCDEF
)
```

