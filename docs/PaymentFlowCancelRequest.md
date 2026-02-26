# PAYJPv2::PaymentFlowCancelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancellation_reason** | **String** | この PaymentFlow のキャンセル理由 | 値 | |:---| | **duplicate**: 重複した支払いである場合。 | | **fraudulent**: 不正な利用だと考えられる場合。 | | **requested_by_customer**: 顧客がキャンセルを要求した場合。 | | **abandoned**: 顧客が支払いを完了しなかった場合。 |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowCancelRequest.new(
  cancellation_reason: null
)
```

