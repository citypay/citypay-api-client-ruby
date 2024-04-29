# CityPayApiClient::PaylinkErrorCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | An error code identifying the error. |  |
| **msg** | **String** | An error message describing the error. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkErrorCode.new(
  code: 1,
  msg: An example error response
)
```

