# PAYJPv2::TermResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;term&#39;] |
| **id** | **String** | 集計区間 ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **start_at** | **Time** | 区間開始時刻 |  |
| **end_at** | **Time** | 区間終了時刻  Term が表す区間は start_at 以上 end_at 未満の範囲となります。 翌サイクルの Term の場合 null を返します。 |  |
| **closed** | **Boolean** | 締め処理が完了済みなら true |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::TermResponse.new(
  object: null,
  id: null,
  livemode: null,
  start_at: null,
  end_at: null,
  closed: null
)
```

