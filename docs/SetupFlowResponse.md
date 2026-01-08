# PAYJPv2::SetupFlowResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;setup_flow&#39;] |
| **id** | **String** | ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **client_secret** | **String** | この SetupFlow のクライアントシークレットです。フロントエンドで公開鍵と合わせて使用し、SetupFlow の取得や支払い方法の登録処理を行います。**この値はこの SetupFlow を利用する顧客以外へ公開しないでください。 |  |
| **customer_id** | **String** |  |  |
| **description** | **String** |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |
| **payment_method_id** | **String** |  |  |
| **payment_method_options** | **Hash&lt;String, Object&gt;** |  |  |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) | この SetupFlow で使用できる支払い方法の種類のリスト |  |
| **status** | [**SetupFlowStatus**](SetupFlowStatus.md) | この SetupFlow のステータスです。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/payments/setupflow#setup-flow-%E3%81%AE%E3%82%B9%E3%83%86%E3%83%BC%E3%82%BF%E3%82%B9\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ステータスの詳細についてはこちらをご覧ください。&lt;/a&gt;  | 値 | |:---| | **requires_payment_method**: 支払い方法が必要です。 | | **requires_confirmation**: 確認が必要です。 | | **requires_action**: 顧客のアクションが必要です。 | | **processing**: 処理中です。 | | **succeeded**: 成功しました。 | | **canceled**: キャンセルされました。 | |  |
| **next_action** | **Hash&lt;String, Object&gt;** |  |  |
| **return_url** | **String** |  |  |
| **last_setup_error** | **Hash&lt;String, Object&gt;** |  |  |
| **cancellation_reason** | [**SetupFlowCancellationReason**](SetupFlowCancellationReason.md) |  |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupFlowResponse.new(
  object: null,
  id: null,
  livemode: null,
  client_secret: null,
  customer_id: null,
  description: null,
  metadata: null,
  payment_method_id: null,
  payment_method_options: null,
  payment_method_types: null,
  status: null,
  next_action: null,
  return_url: null,
  last_setup_error: null,
  cancellation_reason: null,
  created_at: null,
  updated_at: null
)
```

