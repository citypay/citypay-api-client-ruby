# CityPayApiClient::WebHookUnsubscribeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clientid** | **String** | The client id that the hook is registered for.  |  |
| **web_hook_id** | **String** | The webhook id that is to be removed.  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::WebHookUnsubscribeRequest.new(
  clientid: PC12345,
  web_hook_id: hk_Zf3UbQp8cY6LsRwY1
)
```

