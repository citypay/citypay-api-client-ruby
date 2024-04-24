# CityPayApiClient::PaylinkTokenStatusChangeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The count of items returned in this page. | [optional] |
| **max_results** | **Integer** | The max results requested in this page. | [optional] |
| **next_token** | **String** | A token that identifies the starting point of the page of results to be returned. An empty value indicates the start of the dataset. When supplied, it is validated and used to fetch the subsequent page of results. This token is typically obtained from the response of a previous pagination request. | [optional] |
| **tokens** | [**Array&lt;PaylinkTokenStatus&gt;**](PaylinkTokenStatus.md) |  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkTokenStatusChangeResponse.new(
  count: 25,
  max_results: 50,
  next_token: n34liuwn435tUAGFNg34yn...,
  tokens: null
)
```

