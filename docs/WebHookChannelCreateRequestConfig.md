# CityPayApiClient::WebHookChannelCreateRequestConfig

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'citypay_api_client'

CityPayApiClient::WebHookChannelCreateRequestConfig.openapi_one_of
# =>
# [
#   :'HttpConfig'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'citypay_api_client'

CityPayApiClient::WebHookChannelCreateRequestConfig.openapi_discriminator_name
# => :'config'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'citypay_api_client'

CityPayApiClient::WebHookChannelCreateRequestConfig.build(data)
# => #<HttpConfig:0x00007fdd4aab02a0>

CityPayApiClient::WebHookChannelCreateRequestConfig.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `HttpConfig`
- `nil` (if no type matches)

