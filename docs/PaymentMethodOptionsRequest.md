# PAYJPv2::PaymentMethodOptionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**PaymentMethodOptionsCardRequest**](PaymentMethodOptionsCardRequest.md) | カード支払い方法に関するオプション |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodOptionsRequest.new(
  card: null
)
```

