# PAYJPv2::PaymentMethodUpdateCardDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exp_month** | **Integer** | カードの有効期限（月） |  |
| **exp_year** | **Integer** | カードの有効期限（年） |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodUpdateCardDetailsRequest.new(
  exp_month: null,
  exp_year: null
)
```

