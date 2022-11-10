# CityPayApiClient::PaylinkSMSNotificationPath

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **String** | An optional template name to use a template other than the default. | [optional] |
| **to** | **String** | The phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format to send the message to. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkSMSNotificationPath.new(
  template: null,
  to: null
)
```

