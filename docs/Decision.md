# CityPayApiClient::Decision

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication** | [**AuthenRequired**](AuthenRequired.md) |  | [optional] 
**challenge** | [**RequestChallenged**](RequestChallenged.md) |  | [optional] 
**result** | [**AuthResponse**](AuthResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::Decision.new(authentication: null,
                                 challenge: null,
                                 result: null)
```


