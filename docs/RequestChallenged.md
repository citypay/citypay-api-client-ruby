# CityPayApiClient::RequestChallenged

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acs_url** | **String** | The url of the Access Control Server (ACS) to forward the user to.  | [optional] 
**creq** | **String** | The challenge request data which is encoded for usage by the ACS. | [optional] 
**merchantid** | **Integer** | The merchant id that processed this transaction. | [optional] 
**three_d_server_trans_id** | **String** | The 3DSv2 trans id reference for the challenge process. | [optional] 
**transno** | **Integer** | The transaction number for the challenge, ordered incrementally from 1 for every merchant_id.  | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::RequestChallenged.new(acs_url: https://acs.cardissuer.com/3dsv1,
                                 creq: null,
                                 merchantid: 11223344,
                                 three_d_server_trans_id: null,
                                 transno: 78416)
```


