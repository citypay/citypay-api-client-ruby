# CityPayApiClient::PaylinkTokenStatusChangeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **Time** | identifies the date and time to lookup changes after. |  |
| **max_results** | **Integer** | the maximum number of results between 5 and 250 to return. Default is 50. | [optional] |
| **merchantid** | **Integer** | the merchant id to review tokens for. |  |
| **next_token** | **String** | the next token value when more results are available. | [optional] |
| **order_by** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkTokenStatusChangeRequest.new(
  after: null,
  max_results: null,
  merchantid: 11223344,
  next_token: null,
  order_by: null
)
```

