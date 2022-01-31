# CityPayApiClient::AuthResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transaction processed. | [optional] |
| **atrn** | **String** | A reference number provided by the acquirer for a transaction it can be used to cross reference transactions with an Acquirers reporting panel.  | [optional] |
| **atsd** | **String** | Additional Transaction Security Data used for ecommerce transactions to decipher security capabilities and attempts against a transaction. | [optional] |
| **authcode** | **String** | The authorisation code as returned by the card issuer or acquiring bank when a transaction has successfully   been authorised. Authorisation codes contain alphanumeric values. Whilst the code confirms authorisation it   should not be used to determine whether a transaction was successfully processed. For instance an auth code   may be returned when a transaction has been subsequently declined due to a CSC mismatch.  | [optional] |
| **authen_result** | **String** | The result of any authentication using 3d_secure authorisation against ecommerce transactions. Values are:  &lt;table&gt; &lt;tr&gt; &lt;th&gt;Value&lt;/th&gt; &lt;th&gt;Description&lt;/th&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;Y&lt;/td&gt; &lt;td&gt;Authentication Successful. The Cardholder&#39;s password was successfully validated.&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;N&lt;/td&gt; &lt;td&gt;Authentication Failed. Customer failed or cancelled authentication, transaction denied.&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;A&lt;/td&gt; &lt;td&gt;Attempts Processing Performed Authentication could not be completed but a proof of authentication attempt (CAVV) was generated.&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;U&lt;/td&gt; &lt;td&gt;Authentication Could Not Be Performed Authentication could not be completed, due to technical or other problem.&lt;/td&gt; &lt;/tr&gt; &lt;/table&gt;  | [optional] |
| **authorised** | **Boolean** | A boolean definition that indicates that the transaction was authorised. It will return false if the transaction  was declined, rejected or cancelled due to CSC matching failures.  Attention should be referenced to the AuthResult and Response code for accurate determination of the result.  | [optional] |
| **avs_result** | **String** | The AVS result codes determine the result of checking the AVS values within the Address Verification fraud system. If a transaction is declined due to the AVS code not matching, this value can help determine the reason for the decline.  &lt;table&gt; &lt;tr&gt; &lt;th&gt;Code&lt;/th&gt; &lt;th&gt;Description&lt;/th&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Y&lt;/td&gt;&lt;td&gt;Address and 5 digit post code match&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;M&lt;/td&gt;&lt;td&gt;Street address and Postal codes match for international transaction&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;U&lt;/td&gt;&lt;td&gt;No AVS data available from issuer auth system&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;A&lt;/td&gt;&lt;td&gt;Addres matches, post code does not&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;I&lt;/td&gt;&lt;td&gt;Address information verified for international transaction&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Z&lt;/td&gt;&lt;td&gt;5 digit post code matches, Address does not&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;W&lt;/td&gt;&lt;td&gt;9 digit post code matches, Address does not&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;X&lt;/td&gt;&lt;td&gt;Postcode and address match&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;B&lt;/td&gt;&lt;td&gt;Postal code not verified due to incompatible formats&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;P&lt;/td&gt;&lt;td&gt;Postal codes match. Street address not verified due to to incompatible formats&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;E&lt;/td&gt;&lt;td&gt;AVS Error&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;C&lt;/td&gt;&lt;td&gt;Street address and Postal code not verified due to incompatible formats&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;D&lt;/td&gt;&lt;td&gt;Street address and postal codes match&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt; &lt;/td&gt;&lt;td&gt;No information&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;N&lt;/td&gt;&lt;td&gt;Neither postcode nor address match&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;R&lt;/td&gt;&lt;td&gt;Retry, System unavailble or Timed Out&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;S&lt;/td&gt;&lt;td&gt;AVS Service not supported by issuer or processor&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;G&lt;/td&gt;&lt;td&gt;Issuer does not participate in AVS&lt;/td&gt;&lt;/tr&gt; &lt;/table&gt;  | [optional] |
| **bin_commercial** | **Boolean** | Determines whether the bin range was found to be a commercial or business card. | [optional] |
| **bin_debit** | **Boolean** | Determines whether the bin range was found to be a debit card. If false the card was considered as a credit card. | [optional] |
| **bin_description** | **String** | A description of the bin range found for the card. | [optional] |
| **cavv** | **String** | The cardholder authentication verification value which can be returned for verification purposes of the authenticated  transaction for dispute realisation.  | [optional] |
| **context** | **String** | The context which processed the transaction, can be used for support purposes to trace transactions. | [optional] |
| **csc_result** | **String** | The CSC rseult codes determine the result of checking the provided CSC value within the Card Security Code fraud system. If a transaction is declined due to the CSC code not matching, this value can help determine the reason for the decline.  &lt;table&gt; &lt;tr&gt; &lt;th&gt;Code&lt;/th&gt; &lt;th&gt;Description&lt;/th&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt; &lt;/td&gt;&lt;td&gt;No information&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;M&lt;/td&gt;&lt;td&gt;Card verification data matches&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;N&lt;/td&gt;&lt;td&gt;Card verification data was checked but did not match&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;P&lt;/td&gt;&lt;td&gt;Card verification was not processed&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;S&lt;/td&gt;&lt;td&gt;The card verification data should be on the card but the merchant indicates that it is not&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;U&lt;/td&gt;&lt;td&gt;The card issuer is not certified&lt;/td&gt;&lt;/tr&gt; &lt;/table&gt;  | [optional] |
| **currency** | **String** | The currency the transaction was processed in. This is an &#x60;ISO4217&#x60; alpha currency value. | [optional] |
| **datetime** | **Time** | The UTC date time of the transaction in ISO data time format.  | [optional] |
| **eci** | **String** | An Electronic Commerce Indicator (ECI) used to identify the result of authentication using 3DSecure.  | [optional] |
| **identifier** | **String** | The identifier provided within the request. | [optional] |
| **live** | **Boolean** | Used to identify that a transaction was processed on a live authorisation platform. | [optional] |
| **maskedpan** | **String** | A masked value of the card number used for processing displaying limited values that can be used on a receipt.  | [optional] |
| **merchantid** | **Integer** | The merchant id that processed this transaction. |  |
| **result** | **Integer** | An integer result that indicates the outcome of the transaction. The Code value below maps to the result value  &lt;table&gt; &lt;tr&gt; &lt;th&gt;Code&lt;/th&gt; &lt;th&gt;Abbrev&lt;/th&gt; &lt;th&gt;Description&lt;/th&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;0&lt;/td&gt;&lt;td&gt;Declined&lt;/td&gt;&lt;td&gt;Declined&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;1&lt;/td&gt;&lt;td&gt;Accepted&lt;/td&gt;&lt;td&gt;Accepted&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;2&lt;/td&gt;&lt;td&gt;Rejected&lt;/td&gt;&lt;td&gt;Rejected&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;3&lt;/td&gt;&lt;td&gt;Not Attempted&lt;/td&gt;&lt;td&gt;Not Attempted&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;4&lt;/td&gt;&lt;td&gt;Referred&lt;/td&gt;&lt;td&gt;Referred&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;5&lt;/td&gt;&lt;td&gt;PinRetry&lt;/td&gt;&lt;td&gt;Perform PIN Retry&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;6&lt;/td&gt;&lt;td&gt;ForSigVer&lt;/td&gt;&lt;td&gt;Force Signature Verification&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;7&lt;/td&gt;&lt;td&gt;Hold&lt;/td&gt;&lt;td&gt;Hold&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;8&lt;/td&gt;&lt;td&gt;SecErr&lt;/td&gt;&lt;td&gt;Security Error&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;9&lt;/td&gt;&lt;td&gt;CallAcq&lt;/td&gt;&lt;td&gt;Call Acquirer&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;10&lt;/td&gt;&lt;td&gt;DNH&lt;/td&gt;&lt;td&gt;Do Not Honour&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;11&lt;/td&gt;&lt;td&gt;RtnCrd&lt;/td&gt;&lt;td&gt;Retain Card&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;12&lt;/td&gt;&lt;td&gt;ExprdCrd&lt;/td&gt;&lt;td&gt;Expired Card&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;13&lt;/td&gt;&lt;td&gt;InvldCrd&lt;/td&gt;&lt;td&gt;Invalid Card No&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;14&lt;/td&gt;&lt;td&gt;PinExcd&lt;/td&gt;&lt;td&gt;Pin Tries Exceeded&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;15&lt;/td&gt;&lt;td&gt;PinInvld&lt;/td&gt;&lt;td&gt;Pin Invalid&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;16&lt;/td&gt;&lt;td&gt;AuthReq&lt;/td&gt;&lt;td&gt;Authentication Required&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;17&lt;/td&gt;&lt;td&gt;AuthenFail&lt;/td&gt;&lt;td&gt;Authentication Failed&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;18&lt;/td&gt;&lt;td&gt;Verified&lt;/td&gt;&lt;td&gt;Card Verified&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;19&lt;/td&gt;&lt;td&gt;Cancelled&lt;/td&gt;&lt;td&gt;Cancelled&lt;/td&gt;&lt;/tr&gt; &lt;tr&gt;&lt;td&gt;20&lt;/td&gt;&lt;td&gt;Un&lt;/td&gt;&lt;td&gt;Unknown&lt;/td&gt;&lt;/tr&gt; &lt;/table&gt;  |  |
| **result_code** | **String** | The result code as defined in the Response Codes Reference for example 000 is an accepted live transaction whilst 001 is an accepted test transaction. Result codes identify the source of success and failure.  Codes may start with an alpha character i.e. C001 indicating a type of error such as a card validation error.  |  |
| **result_message** | **String** | The message regarding the result which provides further narrative to the result code.  |  |
| **scheme** | **String** | A name of the card scheme of the transaction that processed the transaction such as Visa or MasterCard.  | [optional] |
| **sha256** | **String** | A SHA256 digest value of the transaction used to validate the response data The digest is calculated by concatenating   * authcode   * amount   * response_code   * merchant_id   * trans_no   * identifier   * licence_key - which is not provided in the response.  | [optional] |
| **trans_status** | **String** | Used to identify the status of a transaction. The status is used to track a transaction through its life cycle.  &lt;table&gt; &lt;tr&gt; &lt;th&gt;Id&lt;/th&gt; &lt;th&gt;Description&lt;/th&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;O&lt;/td&gt; &lt;td&gt;Transaction is open for settlement&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;A&lt;/td&gt; &lt;td&gt;Transaction is assigned for settlement and can no longer be voided&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;S&lt;/td&gt; &lt;td&gt;Transaction has been settled&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;D&lt;/td&gt; &lt;td&gt;Transaction has been declined&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;R&lt;/td&gt; &lt;td&gt;Transaction has been rejected&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;P&lt;/td&gt; &lt;td&gt;Transaction has been authorised only and awaiting a capture. Used in pre-auth situations&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;C&lt;/td&gt; &lt;td&gt;Transaction has been cancelled&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;E&lt;/td&gt; &lt;td&gt;Transaction has expired&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;I&lt;/td&gt; &lt;td&gt;Transaction has been initialised but no action was able to be carried out&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;H&lt;/td&gt; &lt;td&gt;Transaction is awaiting authorisation&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;.&lt;/td&gt; &lt;td&gt;Transaction is on hold&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;V&lt;/td&gt; &lt;td&gt;Transaction has been verified&lt;/td&gt; &lt;/tr&gt; &lt;/table&gt;  | [optional] |
| **transno** | **Integer** | The resulting transaction number, ordered incrementally from 1 for every merchant_id. The value will default to less than 1 for transactions that do not have a transaction number issued.  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::AuthResponse.new(
  amount: 3600,
  atrn: null,
  atsd: null,
  authcode: 001245A,
  authen_result: null,
  authorised: true,
  avs_result: null,
  bin_commercial: null,
  bin_debit: null,
  bin_description: Platinum Card,
  cavv: null,
  context: aspiu352908ns47n343598bads,
  csc_result: null,
  currency: GBP,
  datetime: 2020-01-02T18:32:28Z,
  eci: null,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  live: true,
  maskedpan: 4***********0002,
  merchantid: 11223344,
  result: 1,
  result_code: 0,
  result_message: Accepted Transaction,
  scheme: Visa,
  sha256: null,
  trans_status: null,
  transno: 78416
)
```

