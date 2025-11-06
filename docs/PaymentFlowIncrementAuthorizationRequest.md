# PAYJPv2::PaymentFlowIncrementAuthorizationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 支払い予定の金額。50円以上9,999,999円以下である必要があります。支払い手段によって上限金額は異なります。 |  |
| **description** | **String** | オブジェクトにセットする任意の文字列。ユーザーには表示されません。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowIncrementAuthorizationRequest.new(
  amount: null,
  description: null
)
```

