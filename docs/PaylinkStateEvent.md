# CityPayApiClient::PaylinkStateEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datetime** | **Time** | the date and time of the event. | [optional] |
| **message** | **String** | a message associated with the event. | [optional] |
| **state** | **String** | The name of the event that was actioned. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkStateEvent.new(
  datetime: 2025-07-30T15:54:29Z,
  message: message on this state,
  state: FormInput
)
```

