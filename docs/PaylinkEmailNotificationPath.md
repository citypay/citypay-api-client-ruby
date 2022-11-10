# CityPayApiClient::PaylinkEmailNotificationPath

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bcc** | **Array&lt;String&gt;** |  | [optional] |
| **cc** | **Array&lt;String&gt;** |  | [optional] |
| **reply_to** | **Array&lt;String&gt;** |  | [optional] |
| **template** | **String** | An optional template name to use a template other than the default. | [optional] |
| **to** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkEmailNotificationPath.new(
  bcc: null,
  cc: null,
  reply_to: null,
  template: null,
  to: null
)
```

