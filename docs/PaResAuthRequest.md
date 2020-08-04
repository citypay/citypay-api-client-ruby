# CityPayApiClient::PaResAuthRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**md** | **String** | The Merchant Data (MD) which is a unique ID to reference the authentication session. This value will be created by CityPay when required. When responding from the ACS, this value will be returned by the ACS.  | 
**pares** | **String** | The Payer Authentication Response packet which is returned by the ACS containing the  response of the authentication session including verification values. The response  is a base64 encoded packet and should be forwarded to CityPay untouched.  | 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::PaResAuthRequest.new(md: null,
                                 pares: v66ycfSp8jNlvy7PkHbx44NEt3vox90+vZ/7Ll05Vid/jPfQn8adw+4D/vRDUGT19kndW97Hfirb...)
```


