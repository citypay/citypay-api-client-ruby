# CityPayApiClient::PaylinkCartItemModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The net amount of the item. The Paylink Payment Form does not multiply this figure by the value provided by the count value for the cart item, this is principally to avoid rounding errors to introduce discrepancies between the value of the goods charged for and the total amount represented by the collection of cart items. | [optional] |
| **brand** | **String** | The brand of the item such as Nike. | [optional] |
| **category** | **String** | The category of the item such as shoes. | [optional] |
| **count** | **Integer** | The count of how many of this item is being purchased, should the cart be editable, this value should be the default count required. The Paylink Payment Form assumes a count of 1 in the event that no value for the count field is provided for a cart item. | [optional] |
| **label** | **String** | The label which describes the item. | [optional] |
| **max** | **Integer** | For an editable cart, the maximum number of items that can be purchased, defaults to 5. | [optional] |
| **sku** | **String** | The stock control unit value. | [optional] |
| **variant** | **String** | The variant field refers to the variant of the cart item to enable similar items to be distinguished according to certain criteria. For example, similar items may be distinguished in terms of size, weight and power. The Paylink Payment Form does not constrain the value of the variant field to a particular set of metrics. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkCartItemModel.new(
  amount: null,
  brand: null,
  category: null,
  count: null,
  label: null,
  max: null,
  sku: null,
  variant: null
)
```

