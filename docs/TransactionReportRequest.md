# CityPayApiClient::TransactionReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | **Array&lt;String&gt;** |  | [optional] |
| **from** | **Time** | The date and time of transactions from. |  |
| **include_authorised** | **Boolean** | Include transactions fully authorised in the results. | [optional] |
| **include_cancelled** | **Boolean** | Include transactions that were cancelled in the results. | [optional] |
| **include_declined** | **Boolean** | Include transactions that were declined or not honoured in the results. | [optional] |
| **include_rejected** | **Boolean** | Include transactions that were rejected due to validation issues. | [optional] |
| **include_unfulfilled** | **Boolean** | Includes transactions that were initiated but not completed—e.g. those pending authentication or challenge responses that were never fulfilled. | [optional] |
| **max_results** | **Integer** | The maximum number of results to return in a single response. This value is used to limit the size of data returned by the API, enhancing performance and manageability. Values should be between 5 and 250. | [optional] |
| **merchantid** | **Integer** | The merchant id of the transactions to review. |  |
| **mode** | **String** | Defines a preset profile for the level of detail in the returned fields. This simplifies response formatting for common use cases. Available values:  - &#x60;basic&#x60; (default): Returns a minimal, high-level view with key fields for reporting or dashboards.  - &#x60;extended&#x60;: Adds fields useful for customer support, settlement analysis, or more in-depth tracking, while still omitting sensitive personal or low-level fields.  - &#x60;full&#x60;: Returns all available transaction fields, including internal flags, personal data (where applicable), and detailed metadata. Use with care.  | [optional] |
| **next_token** | **String** | A token that identifies the starting point of the page of results to be returned. An empty value indicates the start of the dataset. When supplied, it is validated and used to fetch the subsequent page of results. This token is typically obtained from the response of a previous pagination request. | [optional] |
| **order_by** | **String** | Specifies the field by which results are ordered. Available fields are [trans_no,date_when,amount]. By default, fields are ordered by OrderByExpression(trans_no,ASC). To order in descending order, prefix with &#39;-&#39; or suffix with &#39; DESC&#39;. | [optional] |
| **pii_masked** | **Boolean** | Defines whether personal identifiable information is masked which it is by default. | [optional] |
| **type_refund** | **Boolean** | Include refunds in the results. | [optional] |
| **type_sale** | **Boolean** | Include sales in the results. | [optional] |
| **type_verify** | **Boolean** | Include verifications in the results. | [optional] |
| **_until** | **Time** | The date and time of transactions until. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::TransactionReportRequest.new(
  fields: null,
  from: 2025-01-02T18:32:28Z,
  include_authorised: null,
  include_cancelled: null,
  include_declined: null,
  include_rejected: null,
  include_unfulfilled: null,
  max_results: 50,
  merchantid: 11223344,
  mode: null,
  next_token: n34liuwn435tUAGFNg34yn...,
  order_by: date,
  pii_masked: null,
  type_refund: null,
  type_sale: null,
  type_verify: null,
  _until: 2025-01-03T18:32:28Z
)
```

