# CityPayApiClient::PaylinkUI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_mandatory** | **Boolean** | whether the address is forced as mandatory. | [optional] |
| **form_auto_complete** | **String** | specify the form autocomplete setting, default to on. If set to off the UI will set autocomplete&#x3D;\&quot;off\&quot; on the form level and prevent elements from adding it. | [optional] |
| **ordering** | **Integer** | the logical ordering of the ui groups. | [optional] |
| **postcode_mandatory** | **Boolean** | whether the postcode is forced as mandatory. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkUI.new(
  address_mandatory: null,
  form_auto_complete: true,
  ordering: null,
  postcode_mandatory: null
)
```

