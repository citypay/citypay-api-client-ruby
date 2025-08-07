# CityPayApiClient::WebHookChannelCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_name** | **String** | The name of the channel we are creating.  |  |
| **clientid** | **String** | The client id that the hook is being registered for.  |  |
| **config** | [**WebHookChannelCreateRequestConfig**](WebHookChannelCreateRequestConfig.md) |  |  |
| **endpoint_id** | **String** | The id of the endpoint being used. The channel configuration is dependant upon the endpoint type.  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::WebHookChannelCreateRequest.new(
  channel_name: null,
  clientid: PC12345,
  config: null,
  endpoint_id: null
)
```

