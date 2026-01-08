# PAYJPv2::PaymentFlowResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;payment_flow&#39;] |
| **id** | **String** | 支払いフロー ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **amount** | **Integer** | 支払い予定の金額 |  |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 |  |
| **amount_capturable** | **Integer** |  |  |
| **amount_received** | **Integer** |  |  |
| **client_secret** | **String** | この PaymentFlow のクライアントシークレットです。フロントエンドで公開 API キーと合わせて使用し PaymentFlow の情報を取得や支払い処理を行います。**この値はこの PaymentFlow の支払いを行う顧客以外へ公開しないでください。**また保存やログへの記録なども行わないでください。 |  |
| **customer_id** | **String** |  |  |
| **description** | **String** |  |  |
| **payment_method_id** | **String** |  |  |
| **payment_method_options** | **Hash&lt;String, Object&gt;** |  |  |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) | この PaymentFlow で使用できる支払い方法の種類のリスト |  |
| **status** | [**PaymentFlowStatus**](PaymentFlowStatus.md) | この PaymentFlow のステータス。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/payment_flows#status\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ステータスの詳細についてはこちらをご覧ください。&lt;/a&gt;  | 値 | |:---| | **requires_payment_method**: 支払い方法が必要です。 | | **requires_confirmation**: 確認が必要です。 | | **requires_action**: 顧客のアクションが必要です。 | | **processing**: 処理中です。 | | **requires_capture**: 確定が必要です。 | | **canceled**: キャンセルされました。 | | **succeeded**: 成功しました。 | |  |
| **next_action** | **Hash&lt;String, Object&gt;** |  |  |
| **return_url** | **String** |  |  |
| **capture_method** | [**CaptureMethod**](CaptureMethod.md) | 支払いの確定方法  | 値 | |:---| | **automatic**: (デフォルト) 顧客が支払いを承認すると、自動的に確定させます。 | | **manual**: 顧客が支払いを承認すると一旦確定を保留し、後で Capture API を使用して確定します。（すべての支払い方法がこれをサポートしているわけではありません）。 | |  |
| **last_payment_error** | **Hash&lt;String, Object&gt;** |  |  |
| **cancellation_reason** | [**PaymentFlowCancellationReason**](PaymentFlowCancellationReason.md) |  |  |
| **canceled_at** | **Time** |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowResponse.new(
  object: null,
  id: null,
  livemode: null,
  amount: null,
  currency: null,
  amount_capturable: null,
  amount_received: null,
  client_secret: null,
  customer_id: null,
  description: null,
  payment_method_id: null,
  payment_method_options: null,
  payment_method_types: null,
  status: null,
  next_action: null,
  return_url: null,
  capture_method: null,
  last_payment_error: null,
  cancellation_reason: null,
  canceled_at: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

