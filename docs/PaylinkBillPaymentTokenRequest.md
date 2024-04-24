# CityPayApiClient::PaylinkBillPaymentTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addressee** | **String** | Who the bill payment request intended for. This should be a readable name such as a person or company. | [optional] |
| **attachments** | [**Array&lt;PaylinkAttachmentRequest&gt;**](PaylinkAttachmentRequest.md) |  | [optional] |
| **descriptor** | **String** | A descriptor for the bill payment used to describe what the payment request is for for instance \&quot;Invoice\&quot;.  The descriptor can be used as descriptive text on emails or the payment page. For instance an invoice may have a button saying \&quot;View Invoice\&quot; or an email may say \&quot;to pay your Invoice online\&quot;.  | [optional] |
| **due** | **Date** | A date that the invoice is due. This can be displayed on the payment page. | [optional] |
| **email_notification_path** | [**PaylinkEmailNotificationPath**](PaylinkEmailNotificationPath.md) |  | [optional] |
| **memo** | **String** | A memo that can be added to the payment page and email to provide to the customer. | [optional] |
| **request** | [**PaylinkTokenRequestModel**](PaylinkTokenRequestModel.md) |  |  |
| **sms_notification_path** | [**PaylinkSMSNotificationPath**](PaylinkSMSNotificationPath.md) |  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkBillPaymentTokenRequest.new(
  addressee: null,
  attachments: null,
  descriptor: null,
  due: Mon Apr 22 00:00:00 UTC 2024,
  email_notification_path: null,
  memo: null,
  request: null,
  sms_notification_path: null
)
```

