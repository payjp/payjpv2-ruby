# PAYJPv2::PaymentDisputeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;payment_dispute&#39;] |
| **id** | **String** | PaymentDispute ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **payment_flow_id** | **String** | 関連する PaymentFlow の ID |  |
| **amount** | **Integer** | 金額 |  |
| **currency** | [**Currency**](Currency.md) | 通貨コード (ISO 4217) |  |
| **status** | [**PaymentDisputeStatus**](PaymentDisputeStatus.md) | disputeのステータス  | 値 | |:---| | **pre_warning_needs_response**: 利用照会 | | **warning_needs_response**: 配送保留 | | **warning_needs_refund**: 配送停止 | | **warning_under_review**: 加盟店回答済 | | **needs_response**: チャージバック | | **under_review**: 反証済 | | **lost**: チャージバック受入 | | **cancel**: 取下げ | |  |
| **reason** | [**PaymentDisputeReason**](PaymentDisputeReason.md) |  |  |
| **due_by** | **Time** |  |  |
| **payment_method_type** | [**PaymentMethodTypes**](PaymentMethodTypes.md) | 支払い方法の種類 |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentDisputeResponse.new(
  object: null,
  id: null,
  livemode: null,
  payment_flow_id: null,
  amount: null,
  currency: null,
  status: null,
  reason: null,
  due_by: null,
  payment_method_type: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

