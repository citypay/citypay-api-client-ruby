# CityPayApiClient::Merchant

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **String** | The currency of the merchant. | [optional] 
**merchantid** | **Integer** | The merchant id which uniquely identifies the merchant account. | [optional] 
**name** | **String** | The name of the merchant. | [optional] 
**status** | **String** | The status of the account. | [optional] 
**status_label** | **String** | The status label of the account. | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::Merchant.new(currency: GBP,
                                 merchantid: 11223344,
                                 name: Merchant 1,
                                 status: A,
                                 status_label: Active)
```


