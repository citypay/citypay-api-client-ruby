# CityPayApiClient::PaylinkTokenStatusChangeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged.  | [optional] |
| **tokens** | [**Array&lt;PaylinkTokenStatus&gt;**](PaylinkTokenStatus.md) |  |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkTokenStatusChangeResponse.new(
  next_token: null,
  tokens: null
)
```

