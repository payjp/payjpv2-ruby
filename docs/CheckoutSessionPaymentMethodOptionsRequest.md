# PAYJPv2::CheckoutSessionPaymentMethodOptionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**CheckoutSessionPaymentMethodOptionsCardRequest**](CheckoutSessionPaymentMethodOptionsCardRequest.md) | カード支払い方法に関するオプション | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionPaymentMethodOptionsRequest.new(
  card: null
)
```

