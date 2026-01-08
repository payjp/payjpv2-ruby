# PAYJPv2::CheckoutSessionPaymentMethodOptionsCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_extended_authorization** | **String** | オーソリ期間の延長要求  | 指定できる値 | |:---| | **if_available**: オーソリ期間の延長が可能な場合に延長要求を行います。 | | **never**: オーソリ期間の延長要求を行いません。 | | [optional] |
| **request_three_d_secure** | **String** | 3D セキュア認証の要求方法  | 指定できる値 | |:---| | **any**: 3D セキュア認証を要求します。 | | **automatic**: 必要な場合にのみ 3D セキュア認証を要求します。 | | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionPaymentMethodOptionsCardRequest.new(
  request_extended_authorization: null,
  request_three_d_secure: null
)
```

