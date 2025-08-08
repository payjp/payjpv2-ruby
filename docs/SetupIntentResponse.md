# PAYJPv2::SetupIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID |  |
| **object** | **String** |  | [optional][default to &#39;setup_intent&#39;] |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **client_secret** | **String** | この SetupIntent のクライアントシークレットです。フロントエンドで公開鍵と合わせて使用し、SetupIntent の取得や支払い処理を行います。**この値はこの SetupIntent の支払いを行う顧客以外へ公開しないでください。 |  |
| **customer** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ | [optional] |
| **payment_method** | **String** |  | [optional] |
| **payment_method_options** | **Object** |  | [optional] |
| **payment_method_types** | **Array&lt;String&gt;** | この SetupIntent で使用できる支払い方法の種類（カードなど）のリストです。 指定しない場合、ダッシュボードで利用可能な状態にしている支払い方法が自動的に設定されます。 |  |
| **status** | [**SetupIntentStatus**](SetupIntentStatus.md) | この SetupIntent のステータスです。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/setup_intents#status\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ステータスの詳細についてはこちらをご覧ください。&lt;/a&gt;  | 値 | |:---| | **requires_payment_method**: 支払い方法が必要です。 | | **requires_confirmation**: 確認が必要です。 | | **requires_action**: 顧客のアクションが必要です。 | | **processing**: 処理中です。 | | **succeeded**: 成功しました。 | | **canceled**: キャンセルされました。 | |  |
| **next_action** | **Object** |  | [optional] |
| **return_url** | **String** |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupIntentResponse.new(
  id: null,
  object: null,
  created_at: null,
  updated_at: null,
  livemode: null,
  client_secret: null,
  customer: null,
  description: null,
  metadata: null,
  payment_method: null,
  payment_method_options: null,
  payment_method_types: null,
  status: null,
  next_action: null,
  return_url: null
)
```

