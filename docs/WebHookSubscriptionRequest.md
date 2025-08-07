# CityPayApiClient::WebHookSubscriptionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channels** | **Array&lt;String&gt;** |  | [optional] |
| **clientid** | **String** | The client id that the hook is being registered for.  |  |
| **live** | **Boolean** | Specifies if the key is to be used for production. Defaults to false.  | [optional] |
| **merchant_id** | **Array&lt;Integer&gt;** |  | [optional] |
| **triggers** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::WebHookSubscriptionRequest.new(
  channels: null,
  clientid: PC12345,
  live: true,
  merchant_id: null,
  triggers: null
)
```

