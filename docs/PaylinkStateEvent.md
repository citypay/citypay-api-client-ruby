# CityPayApiClient::PaylinkStateEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datetime** | **Time** | the date and time of the event. | [optional] |
| **message** | **String** | a message associated with the event. | [optional] |
| **state** | **Time** | The name of the event that was actioned. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkStateEvent.new(
  datetime: null,
  message: null,
  state: null
)
```

