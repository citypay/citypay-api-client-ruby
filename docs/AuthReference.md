# CityPayApiClient::AuthReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | The amount of the transaction in decimal currency format. | [optional] 
**amount_value** | **Integer** | The amount of the transaction in integer/request format. | [optional] 
**atrn** | **String** | A reference number provided by the acquiring services. | [optional] 
**authcode** | **String** | The authorisation code of the transaction returned by the acquirer or card issuer. | [optional] 
**batchno** | **String** | A batch number which the transaction has been end of day batched towards. | [optional] 
**currency** | **String** | The currency of the transaction in ISO 4217 code format. | [optional] 
**datetime** | **DateTime** | The date and time of the transaction. | [optional] 
**identifier** | **String** | The identifier of the transaction used to process the transaction. | [optional] 
**maskedpan** | **String** | A masking of the card number which was used to process the tranasction. | [optional] 
**merchantid** | **Integer** | The merchant id of the transaction result. | [optional] 
**result** | **String** | The result of the transaction. | [optional] 
**trans_status** | **String** | The current status of the transaction through it&#39;s lifecycle. | [optional] 
**trans_type** | **String** | The type of transaction that was processed. | [optional] 
**transno** | **Integer** | The transaction number of the transaction. | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::AuthReference.new(amount: 20.0,
                                 amount_value: 3600,
                                 atrn: null,
                                 authcode: 001245A,
                                 batchno: null,
                                 currency: GBP,
                                 datetime: 2020-01-02T18:32:28Z,
                                 identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
                                 maskedpan: 4***********0002,
                                 merchantid: 11223344,
                                 result: null,
                                 trans_status: null,
                                 trans_type: null,
                                 transno: 78416)
```


