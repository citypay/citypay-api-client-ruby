# CityPayApiClient::RemittanceReportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The count of items returned in this page. | [optional] |
| **data** | [**Array&lt;RemittedClientData&gt;**](RemittedClientData.md) |  |  |
| **max_results** | **Integer** | The max results requested in this page. | [optional] |
| **next_token** | **String** | A token that identifies the starting point of the page of results to be returned. An empty value indicates the start of the dataset. When supplied, it is validated and used to fetch the subsequent page of results. This token is typically obtained from the response of a previous pagination request. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RemittanceReportResponse.new(
  count: 25,
  data: null,
  max_results: 50,
  next_token: n34liuwn435tUAGFNg34yn...
)
```

