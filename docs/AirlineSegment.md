# CityPayApiClient::AirlineSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **arrival_location_code** | **String** | A standard airline routing code (airport code or location identifier) applicable to the arrival portion of this segment.  |  |
| **carrier_code** | **String** | This field contains the two character airline designator code (air carrier code or airline code) that corresponds to the airline carrier applicable for up to four flight segments of this trip itinerary.  |  |
| **class_service_code** | **String** | This field contains a code that corresponds to the fare class (A, B, C, D, Premium, Discounted, etc.) within the overall class of service (e.g., First Class, Business, Economy) applicable to this travel segment, as specified in the IATA Standard Code allocation table.  |  |
| **departure_date** | **Date** | The Departure Date for the travel segment in ISO Date Format (yyyy-MM-dd). |  |
| **departure_location_code** | **String** | A standard airline routing code (airport code or location identifier) applicable to the departure portion of this segment.  | [optional] |
| **flight_number** | **String** | This field contains the carrier-assigned Flight Number for this travel segment. |  |
| **segment_fare** | **Integer** | This field contains the total Fare for this travel segment. | [optional] |
| **stop_over_indicator** | **String** | O &#x3D; Stopover allowed, X &#x3D; Stopover not allowed. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::AirlineSegment.new(
  arrival_location_code: SOU,
  carrier_code: ZZ,
  class_service_code: CC,
  departure_date: Sat Aug 01 00:00:00 UTC 2020,
  departure_location_code: JER,
  flight_number: 772,
  segment_fare: 7500,
  stop_over_indicator: 1
)
```

