# CityPayApiClient::CardTokenisationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cardnumber** | **String** | The card number (PAN) with a variable length to a maximum of 21 digits in numerical form. Any non numeric characters will be stripped out of the card number, this includes whitespace or separators internal of the provided value.  The card number must be treated as sensitive data. We only provide an obfuscated value in logging and reporting.  The plaintext value is encrypted in our database using AES 256 GMC bit encryption for settlement or refund purposes.  When providing the card number to our gateway through the authorisation API you will be handling the card data on your application. This will require further PCI controls to be in place and this value must never be stored.  | [optional] |
| **csc** | **String** | The Card Security Code (CSC) (also known as CV2/CVV2) is normally found on the back of the card (American Express has it on the front). The value helps to identify possession of the card as it is not available within the chip or magnetic swipe.  When forwarding the CSC, please ensure the value is a string as some values start with 0 and this will be stripped out by any integer parsing.  The CSC number aids fraud prevention in Mail Order and Internet payments.  Business rules are available on your account to identify whether to accept or decline transactions based on mismatched results of the CSC.  The Payment Card Industry (PCI) requires that at no stage of a transaction should the CSC be stored.  This applies to all entities handling card data.  It should also not be used in any hashing process.  CityPay do not store the value and have no method of retrieving the value once the transaction has been processed. For this reason, duplicate checking is unable to determine the CSC in its duplication check algorithm.  | [optional] |
| **expmonth** | **Integer** | The month of expiry of the card. The month value should be a numerical value between 1 and 12.  | [optional] |
| **expyear** | **Integer** | The year of expiry of the card.  | [optional] |
| **name_on_card** | **String** | The card holder name as appears on the card such as MR N E BODY. Required for some acquirers.  | [optional] |
| **uuid** | **String** | A uuid for the session. The value tracks through 3ds session and therefore should be a valid v4 uuid. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::CardTokenisationRequest.new(
  cardnumber: 4000 0000 0000 0002,
  csc: 10,
  expmonth: 9,
  expyear: 2028,
  name_on_card: MR NE BODY,
  uuid: 123e4567-e89b-12d3-a456-426614174000
)
```

