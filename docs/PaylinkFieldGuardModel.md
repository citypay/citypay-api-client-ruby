# CityPayApiClient::PaylinkFieldGuardModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_type** | **String** | A type of HTML element that should be displayed such as text, password, url. Any HTML5 input type value may be supplied. | [optional] |
| **label** | **String** | A label for the field guard to display on the authentication page. | [optional] |
| **maxlen** | **Integer** | A maximum length of any value supplied in the field guard form. Used for validating entry. | [optional] |
| **minlen** | **Integer** | A minimum length of any value supplied in the field guard form. Used for validating entry. | [optional] |
| **name** | **String** | A field name which is used to refer to a field which is guarded. | [optional] |
| **regex** | **String** | A JavaScript regular expression value which can be used to validate the data provided in the field guard entry form. Used for validating entry. | [optional] |
| **value** | **String** | A value directly associated with the field guard. Any value provided at this level will be considered as sensitive and not logged. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkFieldGuardModel.new(
  field_type: null,
  label: null,
  maxlen: null,
  minlen: null,
  name: null,
  regex: null,
  value: null
)
```

