# CityPayApiClient::AuthenRequired

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acs_url** | **String** | The url of the Access Control Server (ACS) to forward the user to.  | [optional] |
| **md** | **String** | Merchant Data (MD) which should be sent to the ACS to establish and reference the authentication session.  | [optional] |
| **pareq** | **String** | The Payer Authentication Request packet which should be &#x60;POSTed&#x60; to the Url of the ACS to establish the authentication session. Data should be sent untouched.  | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::AuthenRequired.new(
  acs_url: https://acs.cardissuer.com/3dsv1,
  md: null,
  pareq: eNrNWdnOo0qSfpXSmUuf0+w2tFy/lOyYxYDZ79h3sAEbm6cfbFfV+bu6pqe7R2qNJeQkiIwlMyK+...
)
```

