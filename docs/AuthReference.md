# CityPayApiClient::AuthReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address of the card holder. | [optional] |
| **amount** | **String** | The amount of the transaction in decimal currency format. | [optional] |
| **amount_value** | **Integer** | The amount of the transaction in integer/request format. | [optional] |
| **atrn** | **String** | A reference number provided by the acquiring services. | [optional] |
| **authcode** | **String** | The authorisation code of the transaction returned by the acquirer or card issuer. | [optional] |
| **authen_result** | **String** | The authentication result if an ecommerce transaction. &#39;Y&#39;. Authentication Successful, &#39;N&#39;. Authentication Failed, &#39;A&#39;. Attempts Processing Performed, &#39;U&#39;. Authentication Could Not Be Performed, &#39;C&#39;. Challenge Required. | [optional] |
| **batchno** | **String** | A batch number which the transaction has been end of day batched towards. | [optional] |
| **bin_commercial** | **Boolean** | Whether the card is a commercial card. | [optional] |
| **bin_consumer** | **Boolean** | Whether the card is a consumer card. | [optional] |
| **bin_corporate** | **Boolean** | Whether the card is a corporate card. | [optional] |
| **bin_credit** | **Boolean** | Whether the card is a credit card. | [optional] |
| **bin_debit** | **Boolean** | Whether the card is a debit card. | [optional] |
| **cardholder_agreement** | **String** | Merchant-initiated transactions (MITs) are payments you trigger, where the cardholder has previously consented to you carrying out such payments. These may be scheduled (such as recurring payments and installments) or unscheduled (like account top-ups triggered by balance thresholds and no-show charges).  Scheduled These are regular payments using stored card details, like installments or a monthly subscription fee.  - &#x60;I&#x60; Instalment - A single purchase of goods or services billed to a cardholder in multiple transactions, over a period of time agreed by the cardholder and you.  - &#x60;R&#x60; Recurring - Transactions processed at fixed, regular intervals not to exceed one year between transactions, representing an agreement between a cardholder and you to purchase goods or services provided over a period of time.  Unscheduled These are payments using stored card details that do not occur on a regular schedule, like top-ups for a digital wallet triggered by the balance falling below a certain threshold.  - &#x60;A&#x60; Reauthorisation - a purchase made after the original purchase. A common scenario is delayed/split shipments.  - &#x60;C&#x60; Unscheduled Payment - A transaction using a stored credential for a fixed or variable amount that does not occur on a scheduled or regularly occurring transaction date. This includes account top-ups triggered by balance thresholds.  - &#x60;D&#x60; Delayed Charge - A delayed charge is typically used in hotel, cruise lines and vehicle rental environments to perform a supplemental account charge after original services are rendered.  - &#x60;L&#x60; Incremental - An incremental authorisation is typically found in hotel and car rental environments, where the cardholder has agreed to pay for any service incurred during the duration of the contract. An incremental authorisation is where you need to seek authorisation of further funds in addition to what you have originally requested. A common scenario is additional services charged to the contract, such as extending a stay in a hotel.  - &#x60;S&#x60; Resubmission - When the original purchase occurred, but you were not able to get authorisation at the time the goods or services were provided. It should be only used where the goods or services have already been provided, but the authorisation request is declined for insufficient funds.  - &#x60;X&#x60; No-show - A no-show is a transaction where you are enabled to charge for services which the cardholder entered into an agreement to purchase, but the cardholder did not meet the terms of the agreement.  - &#x60;N&#x60; Not Applicable - For all other transactions the value will be not applicable.  | [optional] |
| **currency** | **String** | The currency of the transaction in ISO 4217 code format. | [optional] |
| **datetime** | **Time** | The date and time of the transaction. | [optional] |
| **eci** | **String** | The ECI if an ecommerce transaction. | [optional] |
| **email** | **String** | The email address of the card holder. | [optional] |
| **env** | **String** | The environment that the transaction is process within based on the transaction type. | [optional] |
| **identifier** | **String** | The identifier of the transaction used to process the transaction. | [optional] |
| **initiation** | **String** | The initiation of the payment. The value will be C for Card holder initiated and M for a merchant initiated transaction. | [optional] |
| **instrument** | **String** | The payment instrument used such as Card, Cash, Bank, Crypto, ApplePay, GooglePay, Click2Pay, PayPal, OpenBankingPayment. | [optional] |
| **maskedpan** | **String** | A masking of the card number which was used to process the tranasction. | [optional] |
| **merchantid** | **Integer** | The merchant id of the transaction result. | [optional] |
| **meta** | **Hash&lt;String, String&gt;** |  | [optional] |
| **name_on_card** | **String** | The name of the card holder. | [optional] |
| **postcode** | **String** | The postcode of the card holder. | [optional] |
| **result** | **String** | The result of the transaction. | [optional] |
| **result_id** | **String** | The id of the result of the transaction. | [optional] |
| **scheme** | **String** | The card scheme of any card used. | [optional] |
| **scheme_logo** | **String** | The card scheme logo of any card used. | [optional] |
| **trans_status** | **String** | The current status of the transaction through it&#39;s lifecycle. | [optional] |
| **trans_type** | **String** | The type code of transaction that was processed. | [optional] |
| **transno** | **Integer** | The transaction number of the transaction. | [optional] |
| **type** | **String** | Defines whether the transaction is a sale, refund or verification. | [optional] |
| **utc** | **Integer** | The date and time of the transaction in UTC milli seconds since the epoc. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::AuthReference.new(
  address: Mielles House, St Helier, Jersey,
  amount: 20.0,
  amount_value: 3600,
  atrn: null,
  authcode: 001245A,
  authen_result: null,
  batchno: null,
  bin_commercial: null,
  bin_consumer: null,
  bin_corporate: null,
  bin_credit: null,
  bin_debit: null,
  cardholder_agreement: null,
  currency: GBP,
  datetime: 2025-01-02T18:32:28Z,
  eci: 5,
  email: card.holder@citypay.com,
  env: null,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  initiation: null,
  instrument: Card,
  maskedpan: 4***********0002,
  merchantid: 11223344,
  meta: null,
  name_on_card: MR NE BODY,
  postcode: L6 12W,
  result: null,
  result_id: null,
  scheme: Visa,
  scheme_logo: https://cdn.citypay.com/img/cs/visa-logo.svg,
  trans_status: null,
  trans_type: A,
  transno: 78416,
  type: null,
  utc: 1746299303000
)
```

