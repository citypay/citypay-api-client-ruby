# CityPayApiClient::AuthResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Integer** | The amount of the transaction processed. | [optional] 
**atrn** | **String** | A reference number provided by the acquirer for a transaction it can be used to cross reference transactions with an Acquirers reporting panel.  | [optional] 
**atsd** | **String** | Additional Transaction Security Data used for ecommerce transactions to decipher security capabilities and attempts against a transaction. | [optional] 
**authcode** | **String** | The authorisation code as returned by the card issuer or acquiring bank when a transaction has successfully   been authorised. Authorisation codes contain alphanumeric values. Whilst the code confirms authorisation it   should not be used to determine whether a transaction was successfully processed. For instance an auth code   may be returned when a transaction has been subsequently declined due to a CSC mismatch.  | [optional] 
**authen_result** | **String** | The result of any authentication using 3d_secure authorisation against ecommerce transactions. Values are | Value | Description | |-------|-------------| | Y | Authentication Successful. The Cardholder&#39;s password was successfully validated. | | N | Authentication Failed. Customer failed or cancelled authentication, transaction denied. | | A | Attempts Processing Performed Authentication could not be completed but a proof of authentication attempt (CAVV) was generated | | U | Authentication Could Not Be Performed Authentication could not be completed, due to technical or other problem |  | [optional] 
**authorised** | **Boolean** | A boolean definition that indicates that the transaction was authorised. It will return false if the transaction  was declined, rejected or cancelled due to CSC matching failures. Attention should be referenced to the AuthResult and Response code for accurate determination of the result.  | [optional] 
**avs_result** | **String** | The AVS result codes determine the result of checking the AVS values within the Address Verification fraud system. If a transaction is declined due to the AVS code not matching, this value can help determine the reason for the decline.   | Code | Description |  |------|------------|  | Y | Address and 5 digit post code match |  | M | Street address and Postal codes match for international transaction |  | U | No AVS data available from issuer auth system |  | A | Addres matches, post code does not |  | I | Address information verified for international transaction |  | Z | 5 digit post code matches, Address does not |  | W | 9 digit post code matches, Address does not |  | X | Postcode and address match |  | B | Postal code not verified due to incompatible formats |  | P | Postal codes match. Street address not verified due to to incompatible formats |  | E | AVS Error |  | C | Street address and Postal code not verified due to incompatible formats |  | D | Street address and postal codes match |  |   | No information |  | N | Neither postcode nor address match |  | R | Retry, System unavailble or Timed Out |  | S | AVS Service not supported by issuer or processor |  | G | Issuer does not participate in AVS |  | [optional] 
**bin_commercial** | **Boolean** | Determines whether the bin range was found to be a commercial or business card. | [optional] 
**bin_debit** | **Boolean** | Determines whether the bin range was found to be a debit card. If false the card was considered as a credit card. | [optional] 
**bin_description** | **String** | A description of the bin range found for the card. | [optional] 
**cavv** | **String** | The cardholder authentication verification value which can be returned for verification purposes of the authenticated  transaction for dispute realisation.  | [optional] 
**context** | **String** | The context which processed the transaction, can be used for support purposes to trace transactions. | [optional] 
**csc_result** | **String** | The CSC rseult codes determine the result of checking the provided CSC value within the Card Security Code fraud system. If a transaction is declined due to the CSC code not matching, this value can help determine the reason for the decline.   | Code | Description |  |------|------------|  |   | No information |  | M | Card verification data matches |  | N | Card verification data was checked but did not match |  | P | Card verification was not processed |  | S | The card verification data should be on the card but the merchant indicates that it is not |  | U | The card issuer is not certified |  | [optional] 
**currency** | **String** | The currency the transaction was processed in. This is an &#x60;ISO4217&#x60; alpha currency value. | [optional] 
**datetime** | **DateTime** | The UTC date time of the transaction in ISO data time format.  | [optional] 
**eci** | **String** | An Electronic Commerce Indicator (ECI) used to identify the result of authentication using 3DSecure.  | [optional] 
**identifier** | **String** | The identifier provided within the request. | [optional] 
**live** | **Boolean** | Used to identify that a tranasction was processed on a live authorisation platform. | [optional] 
**maskedpan** | **String** | A masked value of the card number used for processing displaying limited values that can be used on a receipt.  | [optional] 
**merchantid** | **Integer** | The merchant id that processed this transaction. | [optional] 
**result** | **Integer** | An integer result that indicates the outcome of the transaction. The Code value below maps to the result value   | Code | Abbrev | Description |  |------|-------|-------------|  | 0 | Declined | Declined |  | 1 | Accepted | Accepted |  | 2 | Rejected | Rejected |  | 3 | Not Attempted | Not Attempted |  | 4 | Referred | Referred |  | 5 | PinRetry | Perform PIN Retry |  | 6 | ForSigVer | Force Signature Verification |  | 7 | Hold | Hold |  | 8 | SecErr | Security Error |  | 9 | CallAcq | Call Acquirer |  | 10 | DNH | Do Not Honour |  | 11 | RtnCrd | Retain Card |  | 12 | ExprdCrd | Expired Card |  | 13 | InvldCrd | Invalid Card No |  | 14 | PinExcd | Pin Tries Exceeded |  | 15 | PinInvld | Pin Invalid |  | 16 | AuthReq | Authentication Required |  | 17 | AuthenFail | Authentication Failed |  | 18 | Verified | Card Verified |  | 19 | Cancelled | Cancelled |  | 20 | Un | Unknown |  | [optional] 
**result_code** | **String** | The result code as defined in the Response Codes Reference for example 000 is an accepted live transaction whilst 001 is an accepted test transaction. Result codes identify the source of success and failure. Codes may start with an alpha character i.e. C001 indicating a type of error such as a card validation error.  | [optional] 
**result_message** | **String** | The message regarding the result which provides further narrative to the result code.  | [optional] 
**scheme** | **String** | A name of the card scheme of the transaction that processed the transaction such as Visa or MasterCard.  | [optional] 
**sha256** | **String** | A SHA256 digest value of the transaction used to validate the response data The digest is calculated by concatenating  * authcode  * amount  * response_code  * merchant_id  * trans_no  * identifier  * licence_key - which is not provided in the response.  | [optional] 
**trans_status** | **String** | Used to identify the status of a transaction. The status is used to track a transaction through its life cycle.  | Id | Description | |----|-------------| | O | Transaction is open for settlement | | A | Transaction is assigned for settlement and can no longer be voided | | S | Transaction has been settled   | | D | Transaction has been declined | | R | Transaction has been rejected | | P | Transaction has been authorised only and awaiting a capture. Used in pre-auth situations | | C | Transaction has been cancelled | | E | Transaction has expired | | I | Transaction has been initialised but no action was able to be carried out | | H | Transaction is awaiting authorisation | | . | Transaction is on hold | | V | Transaction has been verified |  | [optional] 
**transno** | **Integer** | The resulting transaction number, ordered incrementally from 1 for every merchant_id. The value will default to less than 1 for transactions that do not have a transaction number issued.  | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::AuthResponse.new(amount: 3600,
                                 atrn: null,
                                 atsd: null,
                                 authcode: 001245A,
                                 authen_result: null,
                                 authorised: true,
                                 avs_result: null,
                                 bin_commercial: null,
                                 bin_debit: null,
                                 bin_description: null,
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
                                 transno: 78416)
```


