# PAYJPv2::EventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;event&#39;] |
| **id** | **String** | イベント ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **type** | **String** | イベントの種類 |  |
| **pending_webhooks** | **Integer** | 設定された URL への通知が完了していない (2xx のレスポンスが得られていない) webhook の数 |  |
| **data** | **Hash&lt;String, Object&gt;** | このイベントに関連したリソースオブジェクト |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::EventResponse.new(
  object: null,
  id: null,
  livemode: null,
  type: null,
  pending_webhooks: null,
  data: null,
  created_at: null,
  updated_at: null
)
```

