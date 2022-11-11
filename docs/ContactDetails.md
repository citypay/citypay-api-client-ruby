# CityPayApiClient::ContactDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address1** | **String** | The first line of the address for the shipping contact. | [optional] |
| **address2** | **String** | The second line of the address for the shipping contact. | [optional] |
| **address3** | **String** | The third line of the address for the shipping contact. | [optional] |
| **area** | **String** | The area such as city, department, parish for the shipping contact. | [optional] |
| **company** | **String** | The company name for the shipping contact if the contact is a corporate contact. | [optional] |
| **country** | **String** | The country code in ISO 3166 format. The country value may be used for fraud analysis and for   acceptance of the transaction.  | [optional] |
| **email** | **String** | An email address for the shipping contact which may be used for correspondence. | [optional] |
| **firstname** | **String** | The first name  of the shipping contact. | [optional] |
| **lastname** | **String** | The last name or surname of the shipping contact. | [optional] |
| **mobile_no** | **String** | A mobile number for the shipping contact the mobile number is often required by delivery companies to ensure they are able to be in contact when required. | [optional] |
| **postcode** | **String** | The postcode or zip code of the address which may be used for fraud analysis. | [optional] |
| **telephone_no** | **String** | A telephone number for the shipping contact. | [optional] |
| **title** | **String** | A title for the shipping contact such as Mr, Mrs, Ms, M. Mme. etc. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::ContactDetails.new(
  address1: 79 Parliament St,
  address2: Westminster,
  address3: null,
  area: London,
  company: Acme Ltd,
  country: GB,
  email: card.holder@citypay.com,
  firstname: John,
  lastname: Smith,
  mobile_no: 447790123456,
  postcode: L1 789,
  telephone_no: 442030123456,
  title: Mr
)
```

