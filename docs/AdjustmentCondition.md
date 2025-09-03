# CityPayApiClient::AdjustmentCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **anchor** | **String** | Specifies the reference point (\&quot;anchor\&quot;) and optional duration/range for when an adjustment  (such as a surcharge or discount) becomes effective in relation to the payment intent&#39;s lifecycle.   The period for which an adjustment is effective is determined by combining:    - An \&quot;anchor\&quot;: a reference event, timestamp, or explicit date.    - A &#x60;duration&#x60;: an integer offset in days, whose meaning depends on the anchor.    - Optionally an explicit &#x60;startDate&#x60; and/or &#x60;endDate&#x60;, which take precedence.   Anchor types:   - Explicit Dates:    If both &#x60;startDate&#x60; and &#x60;endDate&#x60; are provided, these take priority as the exact active range.   - after_creation:      Starts &#x60;duration&#x60; days after the intent&#39;s creation date.      If an &#x60;endDate&#x60; is supplied, it is used as the end of the range.      If not, the adjustment remains open-ended (no explicit end).   - after_due_date:      Starts &#x60;duration&#x60; days after the intent&#39;s due date (if available).      If an &#x60;endDate&#x60; is specified, it is used as the end of the range.      Otherwise, the adjustment remains open-ended.   - on_due_date:      Starts on the due date.      If an &#x60;endDate&#x60; is specified and is after the due date, it is used as the end.      Otherwise, the end is computed as the due date plus &#x60;duration&#x60; days.   - until_due_date:      If &#x60;duration &gt;&#x3D; 0&#x60;, starts &#x60;duration&#x60; days after creation, and ends at due date.      If &#x60;duration &lt; 0&#x60;, starts at creation and ends &#x60;abs(duration)&#x60; days before due date.   - before_expiry:      Starts at expiry date minus &#x60;duration&#x60; days (if expiry date is available).      Range extends up to expiry (default) or effectively open-ended.      If an &#x60;endDate&#x60; is specified and before expiry, the range is limited accordingly.   - yyyy-MM-dd (a valid ISO date string):      Effective on a specific date (midnight, or explicit time if provided), plus optional &#x60;duration&#x60; days.      In this case, the range is a single day, unless otherwise specified.    Example usages:    - Adjust 2 days after due: &#x60;anchor &#x3D; \&quot;after_due_date\&quot;, duration &#x3D; 2&#x60;    - Early-bird: &#x60;anchor &#x3D; \&quot;until_due_date\&quot;, duration &#x3D; -3&#x60; // from creation until 3 days before due    - From creation until due: &#x60;anchor &#x3D; \&quot;until_due_date\&quot;, duration &#x3D; 0&#x60;    - Discount for a single date: &#x60;anchor &#x3D; \&quot;2024-07-01\&quot;&#x60;   Notes:    - If &#x60;startDate&#x60; and &#x60;endDate&#x60; are both set, those take precedence over anchor/duration.    - If only &#x60;endDate&#x60; is specified with an anchor, the range starts at the anchor and ends at that date.    - If dates or anchor-related context are missing, no adjustment will be scheduled.  | [optional] |
| **discount_code** | **String** | The discount code condition ensures that an adjustment is only applied if the correct promotional code is provided during the transaction.  Example: A 10% discount might only apply if the customer enters the discount code SEP24.  | [optional] |
| **duration** | **Integer** | The duration specifies the time frame in days relative to the anchor point when the adjustment should be applied. | [optional] |
| **end_date** | **Date** | Define the exact date range within which an adjustment is valid, useful for promotional periods or specific events. | [optional] |
| **start_date** | **Date** | Define the exact date range within which an adjustment is valid, useful for promotional periods or specific events. | [optional] |

## Example

```ruby
require 'citypay_api_client'

instance = CityPayApiClient::AdjustmentCondition.new(
  anchor: null,
  discount_code: null,
  duration: 7,
  end_date: Sat Aug 31 00:00:00 UTC 2024,
  start_date: Thu Aug 01 00:00:00 UTC 2024
)
```

