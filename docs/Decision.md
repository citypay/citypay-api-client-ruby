# CityPayApiClient::Decision

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authen_required** | [**AuthenRequired**](AuthenRequired.md) |  | [optional] |
| **auth_response** | [**AuthResponse**](AuthResponse.md) |  | [optional] |
| **request_challenged** | [**RequestChallenged**](RequestChallenged.md) |  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::Decision.new(
  authen_required: null,
  auth_response: null,
  request_challenged: null
)
```

