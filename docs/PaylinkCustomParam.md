# CityPayApiClient::PaylinkCustomParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_mode** | **String** | The type of entry mode. A value of &#39;pre&#39; will pre-render the custom parameter before the payment screen. Any other value will result in the custom parameter being displayed on the payment screen. | [optional] |
| **field_type** | **String** | the type of html5 field, defaults to &#39;text&#39;. Other options are &#39;dob&#39; for a date of birth series of select list entry. | [optional] |
| **group** | **String** | a group the parameter is linked with, allows for grouping with a title. | [optional] |
| **label** | **String** | a label to show alongside the input. | [optional] |
| **locked** | **Boolean** | whether the parameter is locked from entry. | [optional] |
| **name** | **String** | the name of the custom parameter used to converse with the submitter. |  |
| **order** | **Integer** | an index order for the parameter. | [optional] |
| **pattern** | **String** | a regex pattern to validate the custom parameter with. | [optional] |
| **placeholder** | **String** | a placehold value to display in the input. | [optional] |
| **required** | **Boolean** | whether the field is required. | [optional] |
| **value** | **String** | a default value for the field. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkCustomParam.new(
  entry_mode: null,
  field_type: null,
  group: null,
  label: null,
  locked: null,
  name: null,
  order: null,
  pattern: null,
  placeholder: null,
  required: null,
  value: null
)
```

