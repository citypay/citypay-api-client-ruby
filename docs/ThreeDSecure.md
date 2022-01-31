# CityPayApiClient::ThreeDSecure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_headers** | **String** | Required for 3DSv1. Optional if the &#x60;cp_bx&#x60; value is provided otherwise required for 3Dv2 processing operating in browser authentication mode.  The &#x60;cp_bx&#x60; value will override any value supplied to this field.  The content of the HTTP accept header as sent to the merchant from the cardholder&#39;s user agent.  This value will be validated by the ACS when the card holder authenticates themselves to verify that no intermediary is performing this action. Required for 3DSv1.  | [optional] |
| **cp_bx** | **String** | Required for 3DSv2.  Browser extension value produced by the citypay.js &#x60;bx&#x60; function. See [https://sandbox.citypay.com/3dsv2/bx](https://sandbox.citypay.com/3dsv2/bx) for  details.  | [optional] |
| **downgrade1** | **Boolean** | Where a merchant is configured for 3DSv2, setting this option will attempt to downgrade the transaction to  3DSv1.  | [optional] |
| **merchant_termurl** | **String** | A controller URL for 3D-Secure processing that any response from an authentication request or challenge request should be sent to.  The controller should forward on the response from the URL back via this API for subsequent processing.  | [optional] |
| **tds_policy** | **String** | A policy value which determines whether ThreeDSecure is enforced or bypassed. Note that this will only work for e-commerce transactions and accounts that have 3DSecure enabled and fully registered with Visa, MasterCard or American Express. It is useful when transactions may be wanted to bypass processing rules.  Note that this may affect the liability shift of transactions and may occur a higher fee with the acquiring bank.  Values are   &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions will be enabled for 3DS processing   &#x60;2&#x60; to bypass. Transactions that are bypassed will switch off 3DS processing.  | [optional] |
| **user_agent** | **String** | Required for 3DSv1.  Optional if the &#x60;cp_bx&#x60; value is provided otherwise required 3Dv2 processing operating in browser authentication mode.  The &#x60;cp_bx&#x60; value will override any value supplied to this field.  The content of the HTTP user-agent header as sent to the merchant from the cardholder&#39;s user agent.  This value will be validated by the ACS when the card holder authenticates themselves to verify that no intermediary is performing this action. Required for 3DSv1.  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::ThreeDSecure.new(
  accept_headers: text/html,application/xhtml+xml,application/xml;q&#x3D;0.9,image/webp,image/apng,*/*;q&#x3D;0.8,application/signed-exchange;v&#x3D;b3;q&#x3D;0.9,
  cp_bx: FjaW50b3NoOyBJbnRlbCBNYWMgT1MgWCAx...,
  downgrade1: null,
  merchant_termurl: https://mysite.com/acs/return,
  tds_policy: null,
  user_agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36
)
```

