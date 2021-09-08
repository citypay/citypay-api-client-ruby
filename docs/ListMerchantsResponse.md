# CityPayApiClient::ListMerchantsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_name** | **String** | The client name that was requested. | [optional] |
| **clientid** | **String** | The client id requested. | [optional] |
| **merchants** | [**Array&lt;Merchant&gt;**](Merchant.md) |  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::ListMerchantsResponse.new(
  client_name: null,
  clientid: PC12345,
  merchants: null
)
```

