# CityPayApiClient::PaylinkTokenStatusChangeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **Time** | identifies the date and time to lookup changes after. |  |
| **max_results** | **Integer** | The maximum number of results to return in a single response. This value is used to limit the size of data returned by the API, enhancing performance and manageability. Values should be between 5 and 250. | [optional] |
| **merchantid** | **Integer** | the merchant id to review tokens for. |  |
| **next_token** | **String** | A token that identifies the starting point of the page of results to be returned. An empty value indicates the start of the dataset. When supplied, it is validated and used to fetch the subsequent page of results. This token is typically obtained from the response of a previous pagination request. | [optional] |
| **order_by** | **String** | Specifies the field by which results are ordered. Available fields are [p.id]. By default, fields are ordered by OrderByExpression(p.id,ASC). To order in descending order, prefix with &#39;-&#39; or suffix with &#39; DESC&#39;. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkTokenStatusChangeRequest.new(
  after: 2024-04-22T13:29:14Z,
  max_results: 50,
  merchantid: 11223344,
  next_token: n34liuwn435tUAGFNg34yn...,
  order_by: date
)
```

