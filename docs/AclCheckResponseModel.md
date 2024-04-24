# CityPayApiClient::AclCheckResponseModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl** | **String** | The name or value of the acl which was found to match the ip address. | [optional] |
| **cache** | **Boolean** | Whether the ACL was returned via a cached instance. | [optional] |
| **ip** | **String** | The IP address used in the lookup. | [optional] |
| **provider** | **String** | The source provider of the ACL such as cloud, subnet, country or IP based. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::AclCheckResponseModel.new(
  acl: Default ACL,
  cache: null,
  ip: 8.8.8.8,
  provider: AWS
)
```

