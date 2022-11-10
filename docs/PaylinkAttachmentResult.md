# CityPayApiClient::PaylinkAttachmentResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the attachment. |  |
| **result** | **String** | The result of an uploaded attachment such as &#x60;OK&#x60; or &#x60;UPLOAD&#x60;. |  |
| **url** | **String** | If the attachment is to be uploaded, a URL that can be used for Multipart upload of the attachment. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkAttachmentResult.new(
  name: null,
  result: null,
  url: null
)
```

