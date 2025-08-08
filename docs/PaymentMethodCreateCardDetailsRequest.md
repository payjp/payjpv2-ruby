# PAYJPv2::PaymentMethodCreateCardDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | カード番号 |  |
| **exp_month** | **Integer** | カードの有効期限（月） |  |
| **exp_year** | **Integer** | カードの有効期限（年） |  |
| **cvc** | **String** | カードのセキュリティコード |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodCreateCardDetailsRequest.new(
  number: null,
  exp_month: null,
  exp_year: null,
  cvc: null
)
```

