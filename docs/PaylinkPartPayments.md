# CityPayApiClient::PaylinkPartPayments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **String** | Determines if part payments is enabled. Default is false. | [optional] |
| **floor** | **String** | The floor amount specifies a value that the minimum rate cannot go under. If 0 the amount of min rate is applied. | [optional] |
| **max** | **String** | a maximum percentage to charge i.e. 90%. | [optional] |
| **max_rate** | **String** | a rate as fixed or percentage. | [optional] |
| **min** | **String** | a minimum percentage to charge i.e. 10. | [optional] |
| **min_rate** | **String** | a rate as fixed or percentage. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkPartPayments.new(
  enabled: null,
  floor: null,
  max: null,
  max_rate: null,
  min: null,
  min_rate: null
)
```

