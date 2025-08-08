# PAYJPv2::PaymentMethodBillingDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **phone** | **String** |  |  |
| **email** | **String** |  |  |
| **address** | [**PaymentMethodBillingAddressResponse**](PaymentMethodBillingAddressResponse.md) | 請求先の住所 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodBillingDetailsResponse.new(
  name: null,
  phone: null,
  email: null,
  address: null
)
```

