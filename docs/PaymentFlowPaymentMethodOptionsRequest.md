# PAYJPv2::PaymentFlowPaymentMethodOptionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**PaymentFlowPaymentMethodOptionsCardRequest**](PaymentFlowPaymentMethodOptionsCardRequest.md) | カード支払い方法に関するオプション | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowPaymentMethodOptionsRequest.new(
  card: null
)
```

