# PAYJPv2::SetupFlowPaymentMethodOptionsCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_three_d_secure** | **String** | 3D セキュア認証の要求方法。  | 値 | |:---| | **any**: 3D セキュア認証を要求します。 | | **automatic**: 必要な場合にのみ 3D セキュア認証を要求します。 |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupFlowPaymentMethodOptionsCardRequest.new(
  request_three_d_secure: null
)
```

