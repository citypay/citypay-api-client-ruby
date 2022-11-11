# CityPayApiClient::PaylinkCart

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contents** | [**Array&lt;PaylinkCartItemModel&gt;**](PaylinkCartItemModel.md) |  | [optional] |
| **coupon** | **String** | A coupon redeemed with the transaction. | [optional] |
| **mode** | **Integer** | The mode field specifies the behaviour or functionality of the cart.  Valid values are:   0 - No cart - No cart is shown  1 - Read-only - The cart is shown with a breakdown of the item details provided by objects in the contents array.  2 - Selection cart - The cart is shown as a drop-down box of available cart items that the customer can a single item select from.  3 - Dynamic cart - a text box is rendered to enable the operator to input an amount.  4 - Multi cart - The cart is displayed with items rendered with selectable quantities.  | [optional] |
| **product_description** | **String** | Specifies a description about the product or service that is the subject of the transaction. It will be rendered in the header of the page with no labels. | [optional] |
| **product_information** | **String** | Specifies information about the product or service that is the subject of the transaction. It will be rendered in the header of the page. | [optional] |
| **shipping** | **Integer** | The shipping amount of the transaction in the lowest denomination of currency. | [optional] |
| **tax** | **Integer** | The tax amount of the transaction in the lowest denomination of currency. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::PaylinkCart.new(
  contents: null,
  coupon: null,
  mode: null,
  product_description: null,
  product_information: null,
  shipping: null,
  tax: null
)
```

