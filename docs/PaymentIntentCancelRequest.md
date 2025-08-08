# PAYJPv2::PaymentIntentCancelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancellation_reason** | **String** | キャンセル理由 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentIntentCancelRequest.new(
  cancellation_reason: null
)
```

