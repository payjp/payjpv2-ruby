# PAYJPv2::EventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | イベントID |  |
| **object** | **String** |  | [optional][default to &#39;event&#39;] |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **type** | **String** | イベントの種類 |  |
| **pending_webhooks** | **Integer** | 設定されたURLへの通知が完了していない(2xxのレスポンスが得られていない)webhookの数 |  |
| **data** | **Hash&lt;String, Object&gt;** | このイベントに関連したリソースオブジェクト |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::EventResponse.new(
  id: null,
  object: null,
  created_at: null,
  updated_at: null,
  livemode: null,
  type: null,
  pending_webhooks: null,
  data: null
)
```

