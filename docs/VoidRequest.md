# CityPayApiClient::VoidRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identifier** | **String** | The identifier of the transaction to void. If an empty value is supplied then a &#x60;trans_no&#x60; value must be supplied. | [optional] 
**merchantid** | **Integer** | Identifies the merchant account to perform the void for. | 
**transno** | **Integer** | The transaction number of the transaction to look up and void. If an empty value is supplied then an identifier value must be supplied. | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::VoidRequest.new(identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
                                 merchantid: 11223344,
                                 transno: 78416)
```


