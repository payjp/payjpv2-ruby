# PAYJPv2::StatementResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;statement&#39;] |
| **id** | **String** | 明細 ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **title** | **String** |  |  |
| **type** | [**StatementType**](StatementType.md) | 取引明細の区分  | 値 | 区分 | 詳細 | |---| --- | --- | | **sales** | 売上 | 決済による売上、決済手数料等 | | **service_fee** | サービス利用料 | 有料プランの月額費用など、sales に含まれないサービス利用料 | | **forfeit** | 残高失効 | - | | **transfer_fee** | 振込手数料 | - | | **misc** | その他 | 調整金など | |  |
| **term** | [**TermResponse**](TermResponse.md) |  |  |
| **balance_id** | **String** |  |  |
| **items** | [**Array&lt;StatementItemResponse&gt;**](StatementItemResponse.md) | 明細項目のリスト |  |
| **net** | **Integer** | 含まれる statement_item の金額合計 |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::StatementResponse.new(
  object: null,
  id: null,
  livemode: null,
  title: null,
  type: null,
  term: null,
  balance_id: null,
  items: null,
  net: null,
  created_at: null,
  updated_at: null
)
```

