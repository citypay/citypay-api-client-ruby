# CityPayApiClient::RegisterIpModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exp** | **Integer** | When the ip address expires. At most an IP address can be registered for up to 720 hours. Will default to 12 hours if not supplied. | [optional] |
| **ip** | **String** | The remote ip address to register. Will default to your current IP. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RegisterIpModel.new(
  exp: 1754779757,
  ip: 8.8.8.8
)
```

