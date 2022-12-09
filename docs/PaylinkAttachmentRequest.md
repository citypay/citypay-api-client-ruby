# CityPayApiClient::PaylinkAttachmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **String** | base64 encoding of the file if less than 32kb in size. | [optional] |
| **filename** | **String** | The name of the attachment normally taken from the filename. You should not include the filename path as appropriate. |  |
| **mime_type** | **String** | The mime type of the attachment as defined in [RFC 9110](https://www.rfc-editor.org/rfc/rfc9110.html). Currently only &#x60;application/pdf&#x60; is supported. |  |
| **name** | **String** | A name for the file to identify it to the card holder when it is displayed in the payment form. For example Invoice, Statement. | [optional] |
| **retention** | **Integer** | The retention period in days of the attachment. Defaults to 180 days. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkAttachmentRequest.new(
  data: null,
  filename: null,
  mime_type: null,
  name: null,
  retention: null
)
```

