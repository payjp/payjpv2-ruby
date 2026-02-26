# PAYJPv2::PaymentMethodConfigurationUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **card** | [**CardConfigRequest**](CardConfigRequest.md) |  | [optional] |
| **paypay** | [**PayPayConfigRequest**](PayPayConfigRequest.md) |  | [optional] |
| **apple_pay** | [**ApplePayConfigRequest**](ApplePayConfigRequest.md) |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodConfigurationUpdateRequest.new(
  active: null,
  name: null,
  card: null,
  paypay: null,
  apple_pay: null
)
```

