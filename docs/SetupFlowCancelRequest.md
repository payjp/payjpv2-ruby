# PAYJPv2::SetupFlowCancelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancellation_reason** | [**SetupFlowCancellationReason**](SetupFlowCancellationReason.md) | この SetupFlow のキャンセル理由。  | 値 | |:---| | **abandoned**: 顧客が SetupFlow を完了しなかった場合。 | | **requested_by_customer**: 顧客がキャンセルを要求した場合。 | | **duplicate**: 支払い方法が重複している場合。 |  &#x60;expired&#x60; はシステムが自動的に設定する値のため、リクエストでは指定できません。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupFlowCancelRequest.new(
  cancellation_reason: null
)
```

