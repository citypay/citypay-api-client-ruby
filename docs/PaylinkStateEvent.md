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
  datetime: 2024-04-22T13:29:14Z,
  message: message on this state,
  state: FormInput
)
```

