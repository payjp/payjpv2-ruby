# PAYJPv2::PaymentMethodBillingDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 請求先の名義 | [optional] |
| **phone** | **String** | 請求先の電話番号（ &#x60;type&#x3D;card&#x60; の場合、 &#x60;phone&#x60; または &#x60;email&#x60; のどちらかは必須） | [optional] |
| **email** | **String** | 請求先のメールアドレス（ &#x60;type&#x3D;card&#x60; の場合、 &#x60;phone&#x60; または &#x60;email&#x60; のどちらかは必須） | [optional] |
| **address** | [**PaymentMethodBillingAddressRequest**](PaymentMethodBillingAddressRequest.md) | 請求先の住所 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodBillingDetailsRequest.new(
  name: null,
  phone: null,
  email: null,
  address: null
)
```

