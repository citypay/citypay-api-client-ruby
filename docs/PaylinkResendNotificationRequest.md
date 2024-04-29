# CityPayApiClient::PaylinkResendNotificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **Boolean** | Resends the bill payment email provided on the Paylink create token notification path. Emails can be sent up to 5 times per token. | [optional] |
| **sms** | **Boolean** | Resends the bill payment SMS provided on the Paylink create token notification path. An SMS cannot be resent if it was previously sent less than 1 minute ago. There is a limit of 3 retries per token.  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkResendNotificationRequest.new(
  email: null,
  sms: null
)
```

