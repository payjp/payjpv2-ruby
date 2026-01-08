# PAYJPv2::CheckoutSessionCustomerDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **email** | **String** |  |  |
| **phone** | **String** |  |  |
| **address** | [**CheckoutSessionCustomerDetailsAddressResponse**](CheckoutSessionCustomerDetailsAddressResponse.md) |  |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionCustomerDetailsResponse.new(
  name: null,
  email: null,
  phone: null,
  address: null
)
```

