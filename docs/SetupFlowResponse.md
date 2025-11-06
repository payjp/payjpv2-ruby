# PAYJPv2::SetupFlowResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID |  |
| **object** | **String** |  | [optional][default to &#39;setup_flow&#39;] |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **client_secret** | **String** | この SetupFlow のクライアントシークレットです。フロントエンドで公開鍵と合わせて使用し、SetupFlow の取得や支払い処理を行います。**この値はこの SetupFlow の支払いを行う顧客以外へ公開しないでください。 |  |
| **customer** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ | [optional] |
| **payment_method** | **String** |  | [optional] |
| **payment_method_options** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **payment_method_types** | **Array&lt;String&gt;** | この SetupFlow で使用できる支払い方法の種類（カードなど）のリストです。 指定しない場合、ダッシュボードで利用可能な状態にしている支払い方法が自動的に設定されます。 |  |
| **status** | [**SetupFlowStatus**](SetupFlowStatus.md) | この SetupFlow のステータスです。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/setup_flows#status\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ステータスの詳細についてはこちらをご覧ください。&lt;/a&gt;  | 値 | |:---| | **requires_payment_method**: 支払い方法が必要です。 | | **requires_confirmation**: 確認が必要です。 | | **requires_action**: 顧客のアクションが必要です。 | | **processing**: 処理中です。 | | **succeeded**: 成功しました。 | | **canceled**: キャンセルされました。 | |  |
| **next_action** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **return_url** | **String** |  | [optional] |
| **last_setup_error** | **Hash&lt;String, Object&gt;** |  |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupFlowResponse.new(
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
  return_url: null,
  last_setup_error: null
)
```

