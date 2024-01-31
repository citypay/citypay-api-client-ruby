# CityPayApiClient::PaylinkTokenRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountno** | **String** | Specifies an alpha-numeric account number that the Paylink service uses when creating a Cardholder Account. The value should be no longer than 20 characters in length. | [optional] |
| **amount** | **Integer** | Specifies the intended value of the transaction in the lowest denomination with no spacing characters or decimal point. This is the net total to be processed. An example of £74.95 would be presented as 7495. |  |
| **cardholder** | [**PaylinkCardHolder**](PaylinkCardHolder.md) |  | [optional] |
| **cart** | [**PaylinkCart**](PaylinkCart.md) |  | [optional] |
| **client_version** | **String** | The clientVersion field is used to specify the version of your application that has invoked the Paylink payment process. This feature is typically used for tracing issues relating to application deployments, or any Paylink integration module or plugin. | [optional] |
| **config** | [**PaylinkConfig**](PaylinkConfig.md) |  | [optional] |
| **currency** | **String** | A currency for the token. This value should be only used on multi-currency accounts and be an appropriate currency which the account is configured for. | [optional] |
| **email** | **String** | The email field is used for the Merchant to be notified on completion of the transaction . The value may be supplied to override the default stored value. Emails sent to this address by the Paylink service should not be forwarded on to the cardholder as it may contain certain information that is used by the Paylink service to validate and authenticate Paylink Token Requests: for example, the Merchant ID and the licence key.  | [optional] |
| **identifier** | **String** | Identifies a particular transaction linked to a Merchant account. It enables accurate duplicate checking within a pre-configured time period, as well as transaction reporting and tracing. The identifier should be unique to prevent payment card processing attempts from being rejected due to duplication.  |  |
| **merchantid** | **Integer** | The merchant id you wish to process this transaction with. |  |
| **recurring** | **Boolean** | True if the intent of this cardholder initiated transaction is to establish a recurring payment model, processable as merchant initiated transactions. | [optional] |
| **subscription_id** | **String** | an id associated with a subscription to link the token request against. | [optional] |
| **tx_type** | **String** | A value to override the transaction type if requested by your account manager. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkTokenRequestModel.new(
  accountno: null,
  amount: null,
  cardholder: null,
  cart: null,
  client_version: null,
  config: null,
  currency: GBP,
  email: card.holder@citypay.com,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  merchantid: 11223344,
  recurring: null,
  subscription_id: null,
  tx_type: null
)
```

