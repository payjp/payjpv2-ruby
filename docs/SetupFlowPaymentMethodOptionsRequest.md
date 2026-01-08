# PAYJPv2::SetupFlowPaymentMethodOptionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**SetupFlowPaymentMethodOptionsCardRequest**](SetupFlowPaymentMethodOptionsCardRequest.md) | カード支払い方法に関するオプション | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupFlowPaymentMethodOptionsRequest.new(
  card: null
)
```

