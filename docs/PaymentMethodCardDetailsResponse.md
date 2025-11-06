# PAYJPv2::PaymentMethodCardDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last4** | **String** | カードの下4桁 |  |
| **brand** | **String** | カードのブランド |  |
| **exp_month** | **Integer** | カードの有効期限（月） |  |
| **exp_year** | **Integer** | カードの有効期限（年） |  |
| **fingerprint** | **String** | fingerprint |  |
| **country** | **String** |  |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodCardDetailsResponse.new(
  last4: null,
  brand: null,
  exp_month: null,
  exp_year: null,
  fingerprint: null,
  country: null
)
```

