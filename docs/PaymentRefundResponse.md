# PAYJPv2::PaymentRefundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;payment_refund&#39;] |
| **id** | **String** | 返金 ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **payment_flow_id** | **String** | 返金対象となる PaymentFlow の ID |  |
| **amount** | **Integer** | 返金金額 |  |
| **status** | [**PaymentRefundStatus**](PaymentRefundStatus.md) | 返金ステータス  &lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/status-management/refund#%E8%BF%94%E9%87%91%E3%82%B9%E3%83%86%E3%83%BC%E3%82%BF%E3%82%B9%E3%81%AE%E7%9B%A3%E8%A6%96\&quot; target&#x3D;\&quot;_blank\&quot;&gt;返金ステータスの詳細についてはこちらを参照してください。&lt;/a&gt;  | 値 | |:---| | **succeeded**: 返金が成功しました | | **failed**: 返金が失敗しました | | **pending**: 返金処理中です | | **canceled**: 返金がキャンセルされました | | **requires_action**: 追加のアクションが必要です | |  |
| **reason** | [**PaymentRefundReason**](PaymentRefundReason.md) |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentRefundResponse.new(
  object: null,
  id: null,
  livemode: null,
  payment_flow_id: null,
  amount: null,
  status: null,
  reason: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

