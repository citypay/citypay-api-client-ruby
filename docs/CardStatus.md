# CityPayApiClient::CardStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card_status** | **String** | The status of the card to set, valid values are ACTIVE or INACTIVE. | [optional] 
**default** | **Boolean** | Defines if the card is set as the default. | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::CardStatus.new(card_status: null,
                                 default: null)
```


