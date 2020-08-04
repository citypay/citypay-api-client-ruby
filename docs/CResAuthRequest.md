# CityPayApiClient::CResAuthRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cres** | **String** | The challenge response data forwarded by the ACS in 3D-Secure V2 processing. Data should be forwarded to CityPay unchanged for subsequent authorisation and processing.  | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::CResAuthRequest.new(cres: x90+vZ/7Ll05Vid/jPfQn8adw+4D/vRDUGT19kndW97Hfirbv66ycfSp8jNlvy7PkHbx44NEt3vo...)
```


