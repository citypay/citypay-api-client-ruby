# CityPayApiClient::Exists

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Boolean value whether the entity is active. | [optional] |
| **exists** | **Boolean** | Boolean value whether the entity exists. |  |
| **last_modified** | [**Time**](DateTime.md) | The last modified date of the entity. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::Exists.new(
  active: true,
  exists: true,
  last_modified: 2020-01-02T18:32:28Z
)
```

