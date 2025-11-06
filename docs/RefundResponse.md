# PAYJPv2::RefundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 返金対象となる PaymentFlow の ID |  |
| **object** | **String** |  | [optional][default to &#39;refund&#39;] |
| **created_at** | **Time** | 作成時の日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新時の日時 (UTC, ISO 8601 形式) |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **amount** | **Integer** | 返金金額 |  |
| **status** | [**PaymentRefundStatus**](PaymentRefundStatus.md) | 返金ステータス  &lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/refunds#refund_status\&quot; target&#x3D;\&quot;_blank\&quot;&gt;返金ステータスの詳細についてはこちらを参照してください。&lt;/a&gt;  | 指定できる値 | |:---| | **succeeded**: 成功 | | **failed**: 失敗 | | **pending**: 保留中 | | **canceled**: キャンセル | |  |
| **payment_flow** | **String** | 返金対象となる PaymentFlow の ID |  |
| **reason** | [**PaymentRefundReason**](PaymentRefundReason.md) |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::RefundResponse.new(
  id: null,
  object: null,
  created_at: null,
  updated_at: null,
  livemode: null,
  amount: null,
  status: null,
  payment_flow: null,
  reason: null,
  metadata: null
)
```

