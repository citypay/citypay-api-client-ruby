# CityPayApiClient::HttpConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connect_timeout** | **Integer** | The connection timeout in milliseconds. | [optional] |
| **content_type** | **String** | The content type of the http call. Defaults to &#x60;application/json&#x60;. | [optional] |
| **headers** | **Object** | Http headers to add to the configuration. | [optional] |
| **method** | **String** | The HTTP method to use. Defaults to &#x60;POST&#x60;. | [optional] |
| **read_timeout** | **Integer** | The read timeout in milliseconds when waiting for a reply. | [optional] |
| **url** | **String** | The url of the endpoint to contact. The value should be https. |  |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::HttpConfig.new(
  connect_timeout: 10000,
  content_type: null,
  headers: null,
  method: POST,
  read_timeout: 10000,
  url: https://yoursite.com/path
)
```

