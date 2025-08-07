# CityPayApiClient::PaylinkTokenCreated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | [**Array&lt;PaylinkAttachmentResult&gt;**](PaylinkAttachmentResult.md) |  | [optional] |
| **bps** | **String** | true if BPS has been enabled on this token. | [optional] |
| **date_created** | **Time** | Date and time the token was generated. | [optional] |
| **errors** | [**Array&lt;PaylinkErrorCode&gt;**](PaylinkErrorCode.md) |  | [optional] |
| **id** | **String** | A unique id of the request. |  |
| **identifier** | **String** | The identifier as presented in the TokenRequest. | [optional] |
| **merchantid** | **Integer** | The merchant id of the token. | [optional] |
| **mode** | **String** | Determines whether the token is &#x60;live&#x60; or &#x60;test&#x60;. | [optional] |
| **qrcode** | **String** | A URL of a qrcode which can be used to refer to the token URL. | [optional] |
| **result** | **Integer** | The result field contains the result for the Paylink Token Request. 0 - indicates that an error was encountered while creating the token. 1 - which indicates that a Token was successfully created. |  |
| **server_version** | **String** | the version of the server performing the call. | [optional] |
| **source** | **String** | The incoming IP address of the call. | [optional] |
| **token** | **String** | A token generated for the request used to refer to the transaction in consequential calls. |  |
| **url** | **String** | The Paylink token URL used to checkout by the card holder. | [optional] |
| **usc** | **String** | A UrlShortCode (USC) used for short links. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkTokenCreated.new(
  attachments: null,
  bps: null,
  date_created: 2025-07-30T15:54:29Z,
  errors: null,
  id: 00000000-0000-0000-0000-000000000000,
  identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
  merchantid: 11223344,
  mode: test,
  qrcode: https://payments.citypay.com/AAAAAAA/AAAZZZCCCDDDEEE/qrcode,
  result: 0,
  server_version: x.x.x,
  source: x.x.x.x,
  token: AAAZZZCCCDDDEEE,
  url: https://payments.citypay.com/AAAAAAA/AAAZZZCCCDDDEEE,
  usc: null
)
```

