# CityPayApiClient::PaymentIntentRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustments** | [**Adjustments**](Adjustments.md) |  | [optional] |
| **amount** | **Integer** | The amount to authorise in the lowest unit of currency with a variable length to a maximum of 12 digits.  No decimal points are to be included and no divisional characters such as 1,024.  The amount should be the total amount required for the transaction.  For example with GBP £1,021.95 the amount value is 102195.  |  |
| **avs_postcode_policy** | **String** | A policy value which determines whether an AVS postcode policy is enforced or bypassed.  Values are:   &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions that are enforced will be rejected if the AVS postcode numeric value does not match.   &#x60;2&#x60; to bypass. Transactions that are bypassed will be allowed through even if the postcode did not match.   &#x60;3&#x60; to ignore. Transactions that are ignored will bypass the result and not send postcode details for authorisation.  | [optional] |
| **bill_to** | [**ContactDetails**](ContactDetails.md) |  | [optional] |
| **csc_policy** | **String** | A policy value which determines whether a CSC policy is enforced or bypassed.  Values are:   &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions that are enforced will be rejected if the CSC value does not match.   &#x60;2&#x60; to bypass. Transactions that are bypassed will be allowed through even if the CSC did not match.   &#x60;3&#x60; to ignore. Transactions that are ignored will bypass the result and not send the CSC details for authorisation.  | [optional] |
| **currency** | **String** | The processing currency for the transaction. Will default to the merchant account currency. | [optional] |
| **duplicate_policy** | **String** | A policy value which determines whether a duplication policy is enforced or bypassed. A duplication check has a window of time set against your account within which it can action. If a previous transaction with matching values occurred within the window, any subsequent transaction will result in a T001 result.  Values are   &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions that are enforced will be checked for duplication within the duplication window.   &#x60;2&#x60; to bypass. Transactions that are bypassed will not be checked for duplication within the duplication window.   &#x60;3&#x60; to ignore. Transactions that are ignored will have the same affect as bypass.  | [optional] |
| **external_ref** | **String** | A unique identifier, such as an order ID or invoice number, provided by your accounting or billing system to link the payment intent with an external system reference. This ensures traceability across systems for audits and transaction validation. | [optional] |
| **external_ref_source** | **String** | Specifies the originating source or system of the external reference, helping to categorise and trace the context of the external identifier, whether it comes from an internal system, third-party vendor, or external financial platform. | [optional] |
| **identifier** | **String** | The identifier of the transaction to process. The value should be a valid reference and may be used to perform  post processing actions and to aid in reconciliation of transactions.  The value should be a valid printable string with ASCII character ranges from 0x32 to 0x127.  The identifier is recommended to be distinct for each transaction such as a [random unique identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier) this will aid in ensuring each transaction is identifiable.  When transactions are processed they are also checked for duplicate requests. Changing the identifier on a subsequent request will ensure that a transaction is considered as different.  |  |
| **match_avsa** | **String** | A policy value which determines whether an AVS address policy is enforced, bypassed or ignored.  Values are:   &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy. Transactions that are enforced will be rejected if the AVS address numeric value does not match.   &#x60;2&#x60; to bypass. Transactions that are bypassed will be allowed through even if the address did not match.   &#x60;3&#x60; to ignore. Transactions that are ignored will bypass the result and not send address numeric details for authorisation.  | [optional] |
| **merchantid** | **Integer** | The merchant id of the intent, required if using the API key or not required if using a domain key. | [optional] |
| **pre_auth** | **String** | A policy value which determines whether a pre auth policy is enforced or bypassed.  Values are:   &#x60;0&#x60; for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   &#x60;1&#x60; for an enforced policy.  Enforces pre-authorisation when it does not pre-auth by default.   &#x60;2&#x60; to bypass. Bypasses pre-authorisation when it is enabled to pre auth by default.   &#x60;3&#x60; to ignore. The same as the default policy (0). Although it currently mirrors the default, this option is included for compatibility with other policies.  | [optional] |
| **ship_to** | [**ContactDetails**](ContactDetails.md) |  | [optional] |
| **tag** | **Array&lt;String&gt;** |  | [optional] |
| **trans_info** | **String** | Further information that can be added to the transaction will display in reporting. Can be used for flexible values such as operator id. | [optional] |
| **trans_type** | **String** | The type of transaction being submitted. Normally this value is not required and your account manager may request that you set this field. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaymentIntentRequestModel.new(
  adjustments: null,
  amount: 19995,
  avs_postcode_policy: 0,
  bill_to: null,
  csc_policy: 0,
  currency: GBP,
  duplicate_policy: null,
  external_ref: ABC123,
  external_ref_source: xero,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  match_avsa: null,
  merchantid: 11223344,
  pre_auth: null,
  ship_to: null,
  tag: null,
  trans_info: info-example-value,
  trans_type: A
)
```

