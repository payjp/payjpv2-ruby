# PAYJPv2::PaymentIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 支払いインテントID |  |
| **object** | **String** |  | [optional][default to &#39;payment_intent&#39;] |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **amount** | **Integer** | 支払い予定の金額。50円以上9,999,999円以下である必要があります。支払い手段によって上限金額は異なります。 |  |
| **amount_capturable** | **Integer** |  |  |
| **amount_received** | **Integer** |  |  |
| **client_secret** | **String** | このPaymentIntentのクライアントシークレットです。フロントエンドで公開APIキーと合わせて使用しPaymentIntentの情報を取得や支払い処理を行います。**この値はこのPaymentIntentの支払いを行う顧客以外へ公開しないでください。**また保存やログへの記録なども行わないでください。 |  |
| **confirmation_method** | **String** |  |  |
| **customer** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ | [optional] |
| **payment_method** | **String** |  | [optional] |
| **payment_method_options** | **Object** |  | [optional] |
| **payment_method_types** | **Array&lt;String&gt;** | このPaymentIntentで使用できる支払い方法の種類（カードなど）のリストです。 指定しない場合は、PAY.JPは支払い方法の設定から利用可能な支払い方法を動的に表示します。 |  |
| **receipt_email** | **String** |  | [optional] |
| **status** | [**PaymentIntentStatus**](PaymentIntentStatus.md) | このPaymentIntentのステータスです。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/payment_intents#status\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ステータスの詳細についてはこちらをご覧ください。&lt;/a&gt;  | 値 | |:---| | **requires_payment_method**: 支払い方法が必要です。 | | **requires_confirmation**: 確認が必要です。 | | **requires_action**: 顧客のアクションが必要です。 | | **processing**: 処理中です。 | | **requires_capture**: 確定が必要です。 | | **canceled**: キャンセルされました。 | | **succeeded**: 成功しました。 | |  |
| **next_action** | **Object** |  | [optional] |
| **return_url** | **String** |  | [optional] |
| **capture_method** | [**CaptureMethod**](CaptureMethod.md) | 支払いの確定方法を指定します。  | 指定できる値 | |:---| | **automatic**: 顧客が支払いを承認すると、自動的に確定させます。 | | **automatic_async**: (デフォルト) 顧客が支払いを承認すると、非同期的に確定させます。レイテンシが改善されるため、capture_method&#x3D;automaticよりも推奨されます。詳細については、統合ガイドをお読みください。 | | **manual**: 顧客が支払いを承認すると一旦確定を保留し、後で Capture API を使用して確定します。（すべての支払い方法がこれをサポートしているわけではありません）。 | |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentIntentResponse.new(
  id: null,
  object: null,
  created_at: null,
  updated_at: null,
  livemode: null,
  amount: null,
  amount_capturable: null,
  amount_received: null,
  client_secret: null,
  confirmation_method: null,
  customer: null,
  description: null,
  metadata: null,
  payment_method: null,
  payment_method_options: null,
  payment_method_types: null,
  receipt_email: null,
  status: null,
  next_action: null,
  return_url: null,
  capture_method: null
)
```

