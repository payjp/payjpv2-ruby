# PAYJPv2::TermResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID |  |
| **object** | **String** |  | [optional][default to &#39;term&#39;] |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **start_at** | **Time** | 区間開始時刻 |  |
| **end_at** | **Time** | 区間終了時刻  Termが表す区間はstart_at 以上 end_at 未満 の範囲となります。 翌サイクルのTermの場合nullを返します。  |  |
| **closed** | **Boolean** | 締め処理が完了済みならTrue |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::TermResponse.new(
  id: null,
  object: null,
  livemode: null,
  start_at: null,
  end_at: null,
  closed: null
)
```

