# CityPayApiClient::EventDataModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_end_date** | **Date** | The date when the event ends in ISO format (yyyy-MM-dd). | [optional] |
| **event_id** | **String** | An id of the event. | [optional] |
| **event_organiser_id** | **String** | An id of the event organiser. | [optional] |
| **event_start_date** | **Date** | The date when the event starts in ISO format (yyyy-MM-dd). | [optional] |
| **payment_type** | **String** | The type of payment such as &#x60;deposit&#x60; or &#x60;balance&#x60;. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::EventDataModel.new(
  event_end_date: Mon Apr 22 00:00:00 UTC 2024,
  event_id: null,
  event_organiser_id: null,
  event_start_date: Mon Apr 22 00:00:00 UTC 2024,
  payment_type: null
)
```

