# CityPayApiClient::CardHolderAccountApi

All URIs are relative to *https://api.citypay.com/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_card_delete_request**](CardHolderAccountApi.md#account_card_delete_request) | **DELETE** /account/{accountid}/card/{cardId} | Card Deletion |
| [**account_card_register_request**](CardHolderAccountApi.md#account_card_register_request) | **POST** /account/{accountid}/register | Card Registration |
| [**account_card_status_request**](CardHolderAccountApi.md#account_card_status_request) | **POST** /account/{accountid}/card/{cardId}/status | Card Status |
| [**account_change_contact_request**](CardHolderAccountApi.md#account_change_contact_request) | **POST** /account/{accountid}/contact | Contact Details Update |
| [**account_create**](CardHolderAccountApi.md#account_create) | **POST** /account/create | Account Create |
| [**account_delete_request**](CardHolderAccountApi.md#account_delete_request) | **DELETE** /account/{accountid} | Account Deletion |
| [**account_exists_request**](CardHolderAccountApi.md#account_exists_request) | **GET** /account-exists/{accountid} | Account Exists |
| [**account_retrieve_request**](CardHolderAccountApi.md#account_retrieve_request) | **GET** /account/{accountid} | Account Retrieval |
| [**account_status_request**](CardHolderAccountApi.md#account_status_request) | **POST** /account/{accountid}/status | Account Status |
| [**charge_request**](CardHolderAccountApi.md#charge_request) | **POST** /charge | Charge |


## account_card_delete_request

> <Acknowledgement> account_card_delete_request(accountid, card_id)

Card Deletion

Deletes a card from the account. The card will be marked for deletion before a subsequent purge will clear the card permanently. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.
card_id = 'card_id_example' # String | The id of the card that is presented by a call to retrieve a card holder account.

begin
  # Card Deletion
  result = api_instance.account_card_delete_request(accountid, card_id)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_card_delete_request: #{e}"
end
```

#### Using the account_card_delete_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Acknowledgement>, Integer, Hash)> account_card_delete_request_with_http_info(accountid, card_id)

```ruby
begin
  # Card Deletion
  data, status_code, headers = api_instance.account_card_delete_request_with_http_info(accountid, card_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Acknowledgement>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_card_delete_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account. |  |
| **card_id** | **String** | The id of the card that is presented by a call to retrieve a card holder account. |  |

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/xml


## account_card_register_request

> <CardHolderAccount> account_card_register_request(accountid, register_card)

Card Registration

Allows for a card to be registered for the account. The card will be added for future  processing and will be available as a tokenised value for future processing.  The card will be validated for  0. Being a valid card number (luhn check) 0. Having a valid expiry date 0. Being a valid bin value. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.
register_card = CityPayApiClient::RegisterCard.new({cardnumber: '4000 0000 0000 0002', expmonth: 9, expyear: 2024}) # RegisterCard | 

begin
  # Card Registration
  result = api_instance.account_card_register_request(accountid, register_card)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_card_register_request: #{e}"
end
```

#### Using the account_card_register_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardHolderAccount>, Integer, Hash)> account_card_register_request_with_http_info(accountid, register_card)

```ruby
begin
  # Card Registration
  data, status_code, headers = api_instance.account_card_register_request_with_http_info(accountid, register_card)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardHolderAccount>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_card_register_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account. |  |
| **register_card** | [**RegisterCard**](RegisterCard.md) |  |  |

### Return type

[**CardHolderAccount**](CardHolderAccount.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## account_card_status_request

> <Acknowledgement> account_card_status_request(accountid, card_id, card_status)

Card Status

Updates the status of a card for processing. The following values are available  | Status | Description |  |--------|-------------| | Active | The card is active for processing and can be used for charging against with a valid token | | Inactive | The card is inactive for processing and cannot be used for processing, it will require reactivation before being used to charge | | Expired | The card has expired either due to the expiry date no longer being valid or due to a replacement card being issued | 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.
card_id = 'card_id_example' # String | The id of the card that is presented by a call to retrieve a card holder account.
card_status = CityPayApiClient::CardStatus.new # CardStatus | 

begin
  # Card Status
  result = api_instance.account_card_status_request(accountid, card_id, card_status)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_card_status_request: #{e}"
end
```

#### Using the account_card_status_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Acknowledgement>, Integer, Hash)> account_card_status_request_with_http_info(accountid, card_id, card_status)

```ruby
begin
  # Card Status
  data, status_code, headers = api_instance.account_card_status_request_with_http_info(accountid, card_id, card_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Acknowledgement>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_card_status_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account. |  |
| **card_id** | **String** | The id of the card that is presented by a call to retrieve a card holder account. |  |
| **card_status** | [**CardStatus**](CardStatus.md) |  |  |

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## account_change_contact_request

> <CardHolderAccount> account_change_contact_request(accountid, contact_details)

Contact Details Update

Allows for the ability to change the contact details for an account.

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.
contact_details = CityPayApiClient::ContactDetails.new # ContactDetails | 

begin
  # Contact Details Update
  result = api_instance.account_change_contact_request(accountid, contact_details)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_change_contact_request: #{e}"
end
```

#### Using the account_change_contact_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardHolderAccount>, Integer, Hash)> account_change_contact_request_with_http_info(accountid, contact_details)

```ruby
begin
  # Contact Details Update
  data, status_code, headers = api_instance.account_change_contact_request_with_http_info(accountid, contact_details)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardHolderAccount>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_change_contact_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account. |  |
| **contact_details** | [**ContactDetails**](ContactDetails.md) |  |  |

### Return type

[**CardHolderAccount**](CardHolderAccount.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## account_create

> <CardHolderAccount> account_create(account_create)

Account Create

Creates a new card holder account and initialises the account ready for adding cards.

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
account_create = CityPayApiClient::AccountCreate.new({account_id: 'aaabbb-cccddd-eee'}) # AccountCreate | 

begin
  # Account Create
  result = api_instance.account_create(account_create)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_create: #{e}"
end
```

#### Using the account_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardHolderAccount>, Integer, Hash)> account_create_with_http_info(account_create)

```ruby
begin
  # Account Create
  data, status_code, headers = api_instance.account_create_with_http_info(account_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardHolderAccount>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_create** | [**AccountCreate**](AccountCreate.md) |  |  |

### Return type

[**CardHolderAccount**](CardHolderAccount.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## account_delete_request

> <Acknowledgement> account_delete_request(accountid)

Account Deletion

Allows for the deletion of an account. The account will marked for deletion and subsequent purging. No further transactions will be alowed to be processed or actioned against this account. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.

begin
  # Account Deletion
  result = api_instance.account_delete_request(accountid)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_delete_request: #{e}"
end
```

#### Using the account_delete_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Acknowledgement>, Integer, Hash)> account_delete_request_with_http_info(accountid)

```ruby
begin
  # Account Deletion
  data, status_code, headers = api_instance.account_delete_request_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Acknowledgement>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_delete_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account. |  |

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/xml


## account_exists_request

> <Exists> account_exists_request(accountid)

Account Exists

Checks that an account exists and is active by providing the account id as a url parameter  Checks that an account exists and is active by providing the account id as a url parameter. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.

begin
  # Account Exists
  result = api_instance.account_exists_request(accountid)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_exists_request: #{e}"
end
```

#### Using the account_exists_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Exists>, Integer, Hash)> account_exists_request_with_http_info(accountid)

```ruby
begin
  # Account Exists
  data, status_code, headers = api_instance.account_exists_request_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Exists>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_exists_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account. |  |

### Return type

[**Exists**](Exists.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/xml


## account_retrieve_request

> <CardHolderAccount> account_retrieve_request(accountid)

Account Retrieval

Allows for the retrieval of a card holder account for the given `id`. Should duplicate accounts exist for the same `id`, the first account created with that `id` will be returned.  The account can be used for tokenisation processing by listing all cards assigned to the account. The returned cards will include all `active`, `inactive` and `expired` cards. This can be used to  enable a card holder to view their wallet and make constructive choices on which card to use. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.

begin
  # Account Retrieval
  result = api_instance.account_retrieve_request(accountid)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_retrieve_request: #{e}"
end
```

#### Using the account_retrieve_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardHolderAccount>, Integer, Hash)> account_retrieve_request_with_http_info(accountid)

```ruby
begin
  # Account Retrieval
  data, status_code, headers = api_instance.account_retrieve_request_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardHolderAccount>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_retrieve_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account. |  |

### Return type

[**CardHolderAccount**](CardHolderAccount.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/xml


## account_status_request

> <Acknowledgement> account_status_request(accountid, account_status)

Account Status

Updates the status of an account. An account can have the following statuses applied  | Status | Description | |--------|-------------| | Active | The account is active for processing | | Disabled | The account has been disabled and cannot be used for processing. The account will require reactivation to continue procesing | 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
accountid = 'accountid_example' # String | The account id that refers to the customer's account no. This value will have been provided when setting up the card holder account.
account_status = CityPayApiClient::AccountStatus.new # AccountStatus | 

begin
  # Account Status
  result = api_instance.account_status_request(accountid, account_status)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_status_request: #{e}"
end
```

#### Using the account_status_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Acknowledgement>, Integer, Hash)> account_status_request_with_http_info(accountid, account_status)

```ruby
begin
  # Account Status
  data, status_code, headers = api_instance.account_status_request_with_http_info(accountid, account_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Acknowledgement>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->account_status_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account. |  |
| **account_status** | [**AccountStatus**](AccountStatus.md) |  |  |

### Return type

[**Acknowledgement**](Acknowledgement.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml


## charge_request

> <Decision> charge_request(charge_request)

Charge

A charge process obtains an authorisation using a tokenised value which represents a stored card  on a card holder account.  A card must previously be registered by calling `/account-register-card` with the card details  or retrieved using `/account-retrieve`  Tokens are generated whenever a previously registered list of cards are retrieved. Each token has, by design a  relatively short time to live of 30 minutes. This is both to safe guard the merchant and card holder from  replay attacks. Tokens are also restricted to your account, preventing malicious actors from stealing details for use elsewhere.    If a token is reused after it has expired it will be rejected and a new token will be required.   Tokenisation can be used for   - repeat authorisations on a previously stored card - easy authorisations just requiring CSC values to be entered - can be used for credential on file style payments - can require full 3-D Secure authentication to retain the liability shift - wallet style usage. 

### Examples

```ruby
require 'time'
require 'citypay_api_client'
# setup authorization
CityPayApiClient.configure do |config|
  config.api_key['cp-api-key'] = CityPayApiClient::ApiKey.new(client_id: 'YourClientId', licence_key: 'YourLicenceKey').generate
end

api_instance = CityPayApiClient::CardHolderAccountApi.new
charge_request = CityPayApiClient::ChargeRequest.new({amount: 3600, identifier: '95b857a1-5955-4b86-963c-5a6dbfc4fb95', merchantid: 11223344, token: 'ctPCAPyNyCkx3Ry8wGyv8khC3ch2hUSB3Db..Qzr'}) # ChargeRequest | 

begin
  # Charge
  result = api_instance.charge_request(charge_request)
  p result
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->charge_request: #{e}"
end
```

#### Using the charge_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Decision>, Integer, Hash)> charge_request_with_http_info(charge_request)

```ruby
begin
  # Charge
  data, status_code, headers = api_instance.charge_request_with_http_info(charge_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Decision>
rescue CityPayApiClient::ApiError => e
  puts "Error when calling CardHolderAccountApi->charge_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_request** | [**ChargeRequest**](ChargeRequest.md) |  |  |

### Return type

[**Decision**](Decision.md)

### Authorization

[cp-api-key](../README.md#cp-api-key)

### HTTP request headers

- **Content-Type**: application/json, text/xml
- **Accept**: application/json, text/xml

