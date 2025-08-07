# CityPayApiClient::Adjustments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accumulate** | **String** | How adjustments are accumulated and therefore applied.  **None (Default)**: Only the last applicable adjustment is applied. The system ignores previous adjustments, and only the effect of the final adjustment is considered. Use Case: Use this mode when you want the final transaction amount to reflect only the last adjustment in the sequence, without any cumulative effect from prior adjustments.  **AccumulateBase**: Applies each adjustment independently to the original base amount of the transaction, regardless of any previous adjustments. The effects of all adjustments are then combined to produce the final amount. Use Case: This mode is useful when each adjustment should be applied as if it were the only adjustment, but their effects are accumulated together.  **AccumulatePrevious**: Applies each adjustment sequentially based on the amount resulting from the previous adjustment. This creates a cumulative effect where each adjustment builds upon the last one. Use Case: This mode is ideal when you need the final amount to reflect the cumulative effect of all adjustments in the order they are applied.  **AccumulateBaseOver**: The AccumulateBaseOver mode compares the effect of applying an adjustment to the original base amount with the result of the previously accumulated adjustments. The system then applies whichever adjustment produces a greater final amount. Use Case: This mode is useful when you want to ensure that the most impactful adjustment is applied, whether it comes from the base or the accumulated amount.  | [optional] |
| **adjustment** | **String** | The type of adjustment, valid values are &#x60;surcharge&#x60; or &#x60;discount&#x60;. |  |
| **amount** | **Integer** | For fixed-amount adjustments, an amount to be discounted or surcharged. | [optional] |
| **conditions** | [**AdjustmentCondition**](AdjustmentCondition.md) |  | [optional] |
| **description** | **String** | A brief description of the adjustment, explaining its purpose or the conditions under which it is applied. For example. - Late Payment Fee - £15 fee for expedited processing on the same day - 5% discount for payments made within 5 days - 15% discount for first-time customers - 10% discount for loyalty program members.  | [optional] |
| **percentage** | **Float** | For percentage-based adjustments, the percentage amount to be discounted or surcharged. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::Adjustments.new(
  accumulate: null,
  adjustment: null,
  amount: 19995,
  conditions: null,
  description: 10% discount for loyalty program members,
  percentage: 17.5
)
```

