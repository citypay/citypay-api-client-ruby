# CityPayApiClient::AclCheckRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | An ip address to check for an ACL against. The address should be a publicly routable IPv4 address. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::AclCheckRequest.new(
  ip: 8.8.8.8
)
```

