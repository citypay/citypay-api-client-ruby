# CityPayApiClient::RemittanceReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_from** | **Date** | Start date (YYYY-MM-DD) for batch Retrieval range, inclusive. Maximum value is 3 years ago. | [optional] |
| **date_until** | **Date** | End date (YYYY-MM-DD) for batch Retrieval range, inclusive. | [optional] |
| **max_results** | **Integer** | The maximum number of results to return in a single response. This value is used to limit the size of data returned by the API, enhancing performance and manageability. Values should be between 5 and 250. | [optional] |
| **merchant_id** | **Array&lt;Integer&gt;** |  | [optional] |
| **next_token** | **String** | A token that identifies the starting point of the page of results to be returned. An empty value indicates the start of the dataset. When supplied, it is validated and used to fetch the subsequent page of results. This token is typically obtained from the response of a previous pagination request. | [optional] |
| **order_by** | **String** | Specifies the field by which results are ordered. Available fields are [trans_no,date_when,amount]. By default, fields are ordered by OrderByExpression(trans_no,ASC). To order in descending order, prefix with &#39;-&#39; or suffix with &#39; DESC&#39;. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::RemittanceReportRequest.new(
  date_from: Wed Jan 24 00:00:00 UTC 2024,
  date_until: Wed Jan 31 00:00:00 UTC 2024,
  max_results: 50,
  merchant_id: null,
  next_token: n34liuwn435tUAGFNg34yn...,
  order_by: date
)
```

