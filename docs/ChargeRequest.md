# CityPayApiClient::ChargeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to authorise in the lowest unit of currency with a variable length to a maximum of 12 digits.  No decimal points are to be included and no divisional characters such as 1,024.  The amount should be the total amount required for the transaction.  For example with GBP £1,021.95 the amount value is 102195.  |  |
| **avs_postcode_policy** | **String** | A policy value which determines whether an AVS postcode policy is enforced or bypassed.  Values are  &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions that are enforced will be rejected if the AVS postcode numeric value does not match.   &#x60;2&#x60; to bypass. Transactions that are bypassed will be allowed through even if the postcode did not match.   &#x60;3&#x60; to ignore. Transactions that are ignored will bypass the result and not send postcode details for authorisation.  | [optional] |
| **csc** | **String** | The Card Security Code (CSC) (also known as CV2/CVV2) is normally found on the back of the card (American Express has it on the front). The value helps to identify posession of the card as it is not available within the chip or magnetic swipe.  When forwarding the CSC, please ensure the value is a string as some values start with 0 and this will be stripped out by any integer parsing.  The CSC number aids fraud prevention in Mail Order and Internet payments.  Business rules are available on your account to identify whether to accept or decline transactions based on mismatched results of the CSC.  The Payment Card Industry (PCI) requires that at no stage of a transaction should the CSC be stored.  This applies to all entities handling card data.  It should also not be used in any hashing process.  CityPay do not store the value and have no method of retrieving the value once the transaction has been processed. For this reason, duplicate checking is unable to determine the CSC in its duplication check algorithm.  | [optional] |
| **csc_policy** | **String** | A policy value which determines whether a CSC policy is enforced or bypassed.  Values are  &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions that are enforced will be rejected if the CSC value does not match.   &#x60;2&#x60; to bypass. Transactions that are bypassed will be allowed through even if the CSC did not match.   &#x60;3&#x60; to ignore. Transactions that are ignored will bypass the result and not send the CSC details for authorisation.  | [optional] |
| **currency** | **String** | The processing currency for the transaction. Will default to the merchant account currency. | [optional] |
| **duplicate_policy** | **String** | A policy value which determines whether a duplication policy is enforced or bypassed. A duplication check has a window of time set against your account within which it can action. If a previous transaction with matching values occurred within the window, any subsequent transaction will result in a T001 result.  Values are  &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions that are enforced will be checked for duplication within the duplication window.   &#x60;2&#x60; to bypass. Transactions that are bypassed will not be checked for duplication within the duplication window.   &#x60;3&#x60; to ignore. Transactions that are ignored will have the same affect as bypass.  | [optional] |
| **identifier** | **String** | The identifier of the transaction to process. The value should be a valid reference and may be used to perform  post processing actions and to aid in reconciliation of transactions.  The value should be a valid printable string with ASCII character ranges from 0x32 to 0x127.  The identifier is recommended to be distinct for each transaction such as a [random unique identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier) this will aid in ensuring each transaction is identifiable.  When transactions are processed they are also checked for duplicate requests. Changing the identifier on a subsequent request will ensure that a transaction is considered as different.  |  |
| **match_avsa** | **String** | A policy value which determines whether an AVS address policy is enforced, bypassed or ignored.  Values are  &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions that are enforced will be rejected if the AVS address numeric value does not match.   &#x60;2&#x60; to bypass. Transactions that are bypassed will be allowed through even if the address did not match.   &#x60;3&#x60; to ignore. Transactions that are ignored will bypass the result and not send address numeric details for authorisation.  | [optional] |
| **merchantid** | **Integer** | Identifies the merchant account to perform processing for. |  |
| **threedsecure** | [**ThreeDSecure**](ThreeDSecure.md) |  | [optional] |
| **token** | **String** | A tokenised form of a card that belongs to a card holder&#39;s account and that has been previously registered. The token is time based and will only be active for a short duration. The value is therefore designed not to be stored remotely for future use.   Tokens will start with ct and are resiliently tamper proof using HMacSHA-256. No sensitive card data is stored internally within the token.   Each card will contain a different token and the value may be different on any retrieval call.   The value can be presented for payment as a selection value to an end user in a web application.  |  |
| **trans_info** | **String** | Further information that can be added to the transaction will display in reporting. Can be used for flexible values such as operator id. | [optional] |
| **trans_type** | **String** | The type of transaction being submitted. Normally this value is not required and your account manager may request that you set this field. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::ChargeRequest.new(
  amount: 3600,
  avs_postcode_policy: null,
  csc: 12,
  csc_policy: null,
  currency: GBP,
  duplicate_policy: null,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  match_avsa: null,
  merchantid: 11223344,
  threedsecure: null,
  token: ctPCAPyNyCkx3Ry8wGyv8khC3ch2hUSB3Db..Qzr,
  trans_info: null,
  trans_type: null
)
```

