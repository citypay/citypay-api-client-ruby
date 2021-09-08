# CityPayApiClient::ExternalMPI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authen_result** | **String** | The authentication result available from the MPI. | [optional] |
| **cavv** | **String** | A value determining the cardholder verification value supplied by the card scheme. | [optional] |
| **eci** | **Integer** | The obtained e-commerce indicator from the MPI. | [optional] |
| **enrolled** | **String** | A value determining whether the card holder was enrolled. | [optional] |
| **xid** | **String** | The XID used for processing with the MPI. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::ExternalMPI.new(
  authen_result: null,
  cavv: null,
  eci: null,
  enrolled: null,
  xid: null
)
```

