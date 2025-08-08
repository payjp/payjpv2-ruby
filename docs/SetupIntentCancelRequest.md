# PAYJPv2::SetupIntentCancelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancellation_reason** | **String** | この SetupIntent のキャンセル理由。  | 指定できる値 | |:---| | **abandoned**: 顧客が支払いを完了しなかった場合。 | | **requested_by_customer**: 顧客がキャンセルを要求した場合。 | | **duplicate**: 支払い方法が重複している場合。 | | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupIntentCancelRequest.new(
  cancellation_reason: null
)
```

