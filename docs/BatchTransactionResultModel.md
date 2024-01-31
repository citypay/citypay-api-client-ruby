# CityPayApiClient::BatchTransactionResultModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The card holder account id used for the transaction. |  |
| **amount** | **Integer** | The amount of the transaction processed. | [optional] |
| **authcode** | **String** | The authorisation code of a successful transaction. | [optional] |
| **datetime** | **Time** | The datetime that the transaction was processed. | [optional] |
| **identifier** | **String** | The identifier of the transaction. |  |
| **maskedpan** | **String** | A masked value of the card number used for processing displaying limited values that can be used on a receipt.  | [optional] |
| **merchantid** | **Integer** | The merchant id of the transaction. |  |
| **message** | **String** | A response message pertaining to the transaction. |  |
| **result** | **Integer** | An integer result that indicates the outcome of the transaction. The Code value below maps to the result value  &lt;table&gt; &lt;tr&gt; &lt;th&gt;Code&lt;/th&gt; &lt;th&gt;Abbrev&lt;/th&gt; &lt;th&gt;Description&lt;/th&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;0&lt;/td&gt;&lt;td&gt;Declined&lt;/td&gt;&lt;td&gt;Declined&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;1&lt;/td&gt;&lt;td&gt;Accepted&lt;/td&gt;&lt;td&gt;Accepted&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;2&lt;/td&gt;&lt;td&gt;Rejected&lt;/td&gt;&lt;td&gt;Rejected&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;3&lt;/td&gt;&lt;td&gt;Not Attempted&lt;/td&gt;&lt;td&gt;Not Attempted&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;4&lt;/td&gt;&lt;td&gt;Referred&lt;/td&gt;&lt;td&gt;Referred&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;5&lt;/td&gt;&lt;td&gt;PinRetry&lt;/td&gt;&lt;td&gt;Perform PIN Retry&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;6&lt;/td&gt;&lt;td&gt;ForSigVer&lt;/td&gt;&lt;td&gt;Force Signature Verification&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;7&lt;/td&gt;&lt;td&gt;Hold&lt;/td&gt;&lt;td&gt;Hold&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;8&lt;/td&gt;&lt;td&gt;SecErr&lt;/td&gt;&lt;td&gt;Security Error&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;9&lt;/td&gt;&lt;td&gt;CallAcq&lt;/td&gt;&lt;td&gt;Call Acquirer&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;10&lt;/td&gt;&lt;td&gt;DNH&lt;/td&gt;&lt;td&gt;Do Not Honour&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;11&lt;/td&gt;&lt;td&gt;RtnCrd&lt;/td&gt;&lt;td&gt;Retain Card&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;12&lt;/td&gt;&lt;td&gt;ExprdCrd&lt;/td&gt;&lt;td&gt;Expired Card&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;13&lt;/td&gt;&lt;td&gt;InvldCrd&lt;/td&gt;&lt;td&gt;Invalid Card No&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;14&lt;/td&gt;&lt;td&gt;PinExcd&lt;/td&gt;&lt;td&gt;Pin Tries Exceeded&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;15&lt;/td&gt;&lt;td&gt;PinInvld&lt;/td&gt;&lt;td&gt;Pin Invalid&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;16&lt;/td&gt;&lt;td&gt;AuthReq&lt;/td&gt;&lt;td&gt;Authentication Required&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;17&lt;/td&gt;&lt;td&gt;AuthenFail&lt;/td&gt;&lt;td&gt;Authentication Failed&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;18&lt;/td&gt;&lt;td&gt;Verified&lt;/td&gt;&lt;td&gt;Card Verified&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;19&lt;/td&gt;&lt;td&gt;Cancelled&lt;/td&gt;&lt;td&gt;Cancelled&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;20&lt;/td&gt;&lt;td&gt;Un&lt;/td&gt;&lt;td&gt;Unknown&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;21&lt;/td&gt;&lt;td&gt;Challenged&lt;/td&gt;&lt;td&gt;Challenged&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;22&lt;/td&gt;&lt;td&gt;Decoupled&lt;/td&gt;&lt;td&gt;Decoupled&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;23&lt;/td&gt;&lt;td&gt;Denied&lt;/td&gt;&lt;td&gt;Permission Denied&lt;/td&gt;&lt;/tr&gt; &lt;/table&gt;  |  |
| **result_code** | **String** | A result code of the transaction identifying the result of the transaction for success, rejection or decline. |  |
| **scheme** | **String** | The name of the card scheme of the transaction that processed the transaction such as Visa or MasterCard.  | [optional] |
| **scheme_id** | **String** | The name of the card scheme of the transaction such as VI or MC.  | [optional] |
| **scheme_logo** | **String** | A url containing a logo of the card scheme.  | [optional] |
| **transno** | **Integer** | The resulting transaction number, ordered incrementally from 1 for every merchant_id. The value will default to less than 1 for transactions that do not have a transaction number issued.  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::BatchTransactionResultModel.new(
  account_id: aaabbb-cccddd-eee,
  amount: 3600,
  authcode: 001245A,
  datetime: 2020-01-02T18:32:28Z,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  maskedpan: 4***********0002,
  merchantid: 11223344,
  message: Approved 044332,
  result: 1,
  result_code: 0,
  scheme: Visa,
  scheme_id: MC,
  scheme_logo: https://cdn.citypay.com/img/cs/visa-logo.svg,
  transno: 78416
)
```

