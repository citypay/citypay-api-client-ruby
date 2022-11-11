# CityPayApiClient::PaylinkFieldGuardModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | A label for the field guard to display on the authentication page. | [optional] |
| **name** | **String** | A field name which is used to refer to a field which is guarded. | [optional] |
| **type** | **String** | A type of HTML element that should be displayed such as text, password, url. Any HTML5 input type value may be supplied. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkFieldGuardModel.new(
  label: null,
  name: null,
  type: null
)
```

