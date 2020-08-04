# CityPayApiClient::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | A response code providing a result of the process. | [optional] 
**context** | **String** | A context id of the process used for referencing transactions through support. | [optional] 
**identifier** | **String** | An identifier if presented in the original request. | [optional] 
**message** | **String** | A response message providing a description of the result of the process. | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::Error.new(code: 0,
                                 context: aspiu352908ns47n343598bads,
                                 identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
                                 message: Approved 044332)
```


