# PAYJPv2::PaymentMethodBillingAddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | 請求先の住所（国） | [optional] |
| **zip** | **String** | 請求先の住所（郵便番号） | [optional] |
| **state** | **String** | 請求先の住所（都道府県） | [optional] |
| **city** | **String** | 請求先の住所（市区町村） | [optional] |
| **line1** | **String** | 請求先の住所（番地など） | [optional] |
| **line2** | **String** | 請求先の住所（建物名など） | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodBillingAddressRequest.new(
  country: null,
  zip: null,
  state: null,
  city: null,
  line1: null,
  line2: null
)
```

