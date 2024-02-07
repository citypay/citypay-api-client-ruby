# CityPayApiClient::TokenisationResponseModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authen_result** | **String** | The result of any authentication using 3d_secure authorisation against ecommerce transactions. Values are:  &lt;table&gt; &lt;tr&gt; &lt;th&gt;Value&lt;/th&gt; &lt;th&gt;Description&lt;/th&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;Y&lt;/td&gt; &lt;td&gt;Authentication Successful. The Cardholder&#39;s password was successfully validated.&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;N&lt;/td&gt; &lt;td&gt;Authentication Failed. Customer failed or cancelled authentication, transaction denied.&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;A&lt;/td&gt; &lt;td&gt;Attempts Processing Performed Authentication could not be completed but a proof of authentication attempt (CAVV) was generated.&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;U&lt;/td&gt; &lt;td&gt;Authentication Could Not Be Performed Authentication could not be completed, due to technical or other problem.&lt;/td&gt; &lt;/tr&gt; &lt;/table&gt;  | [optional] |
| **bin_commercial** | **Boolean** | Determines whether the bin range was found to be a commercial or business card. | [optional] |
| **bin_debit** | **Boolean** | Determines whether the bin range was found to be a debit card. If false the card was considered as a credit card. | [optional] |
| **bin_description** | **String** | A description of the bin range found for the card. | [optional] |
| **eci** | **String** | An Electronic Commerce Indicator (ECI) used to identify the result of authentication using 3DSecure.  | [optional] |
| **identifier** | **String** | The identifier provided within the request. | [optional] |
| **maskedpan** | **String** | A masked value of the card number used for processing displaying limited values that can be used on a receipt.  | [optional] |
| **scheme** | **String** | The name of the card scheme of the transaction that processed the transaction such as Visa or MasterCard.  | [optional] |
| **sig_id** | **String** | A Base58 encoded SHA-256 digest generated from the token value Base58 decoded and appended with the nonce value UTF-8 decoded. | [optional] |
| **token** | **String** | The token used for presentment to authorisation later in the processing flow. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::TokenisationResponseModel.new(
  authen_result: null,
  bin_commercial: null,
  bin_debit: null,
  bin_description: Platinum Card,
  eci: null,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  maskedpan: 4***********0002,
  scheme: Visa,
  sig_id: YWV3ZmF3ZWZhd2VmYXdmMmZhZWYzYWVn,
  token: ctPCAPyNyCkx3Ry8wGyv8khC3ch2hUSB3Db..Qzr
)
```

