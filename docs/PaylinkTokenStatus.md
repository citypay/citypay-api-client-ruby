# CityPayApiClient::PaylinkTokenStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_paid** | **Integer** | the amount that has been paid against the session. | [optional] |
| **auth_code** | **String** | an authorisation code if the transaction was processed and isPaid is true. | [optional] |
| **card** | **String** | a description of the card that was used for payment if paid. | [optional] |
| **created** | **Time** | the date and time that the session was created. | [optional] |
| **datetime** | **Time** | the date and time of the current status. | [optional] |
| **identifier** | **String** | the merchant identifier, to help identifying the token. | [optional] |
| **is_attachment** | **Boolean** | true if an attachment exists. | [optional] |
| **is_cancelled** | **Boolean** | true if the session was cancelled either by the user or by a system request. | [optional] |
| **is_closed** | **Boolean** | true if the token has been closed. | [optional] |
| **is_customer_receipt_email_sent** | **Boolean** | true if a customer receipt has been sent. | [optional] |
| **is_email_sent** | **Boolean** | true if an email was sent. | [optional] |
| **is_expired** | **Boolean** | true if the session has expired. | [optional] |
| **is_form_viewed** | **Boolean** | true if the form was ever displayed to the addressee. | [optional] |
| **is_merchant_notification_email_sent** | **Boolean** | true if a merchant notification receipt was sent. | [optional] |
| **is_open_for_payment** | **Boolean** | true if the session is still open for payment or false if it has been closed. | [optional] |
| **is_paid** | **Boolean** | whether the session has been paid and therefore can be considered as complete. | [optional] |
| **is_payment_attempted** | **Boolean** | true if payment has been attempted. | [optional] |
| **is_postback_ok** | **Boolean** | true if a post back was executed successfully. | [optional] |
| **is_request_challenged** | **Boolean** | true if the request has been challenged using 3-D Secure. | [optional] |
| **is_sms_sent** | **Boolean** | true if an SMS was sent. | [optional] |
| **is_validated** | **Boolean** | whether the token generation was successfully validated. | [optional] |
| **last_event_date_time** | **Time** | the date and time that the session last had an event actioned against it. | [optional] |
| **last_payment_result** | **String** | the result of the last payment if one exists. | [optional] |
| **mid** | **String** | identifies the merchant account. | [optional] |
| **payment_attempts_count** | **Integer** | the number of attempts made to pay. | [optional] |
| **state_history** | [**Array&lt;PaylinkStateEvent&gt;**](PaylinkStateEvent.md) |  | [optional] |
| **token** | **String** | the token value which uniquely identifies the session. | [optional] |
| **trans_no** | **Integer** | a transaction number if the transacstion was processed and isPaid is true. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkTokenStatus.new(
  amount_paid: null,
  auth_code: null,
  card: null,
  created: null,
  datetime: null,
  identifier: null,
  is_attachment: null,
  is_cancelled: null,
  is_closed: null,
  is_customer_receipt_email_sent: null,
  is_email_sent: null,
  is_expired: null,
  is_form_viewed: null,
  is_merchant_notification_email_sent: null,
  is_open_for_payment: null,
  is_paid: null,
  is_payment_attempted: null,
  is_postback_ok: null,
  is_request_challenged: null,
  is_sms_sent: null,
  is_validated: null,
  last_event_date_time: null,
  last_payment_result: null,
  mid: null,
  payment_attempts_count: null,
  state_history: null,
  token: null,
  trans_no: null
)
```

