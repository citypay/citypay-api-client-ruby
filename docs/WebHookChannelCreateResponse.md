# CityPayApiClient::WebHookChannelCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | **Object** | The resultant config object. | [optional] |
| **endpoint_id** | **String** | The id of the endpoint being used. | [optional] |
| **web_channel_id** | **String** | The id returned for the generated channel. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::WebHookChannelCreateResponse.new(
  config: null,
  endpoint_id: null,
  web_channel_id: wc_4ERJ5kV7nX2hT9m
)
```

