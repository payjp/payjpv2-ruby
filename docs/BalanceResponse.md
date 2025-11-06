# PAYJPv2::BalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;balance&#39;] |
| **id** | **String** | 残高ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新時の日時 (UTC, ISO 8601 形式) |  |
| **state** | [**BalanceState**](BalanceState.md) | Balanceの状態  | 指定できる値 | |:---| | **collecting**: 集計中 | | **transfer**: 入金 | | **claim**: 請求 | |  |
| **statements** | [**Array&lt;StatementResponse&gt;**](StatementResponse.md) | 関連付けられているStatementオブジェクトのリスト |  |
| **closed** | **Boolean** | このBalanceの清算が終了していればtrue  state&#x3D;transferであれば加盟店口座への入金作業完了、state&#x3D;claimであればPAY.JPで請求額の振込が確認できたことを表します。 |  |
| **closed_date** | **Time** |  | [optional] |
| **due_date** | **Time** |  |  |
| **net** | **Integer** | 関連付けられているStatementの総額 |  |
| **bank_info** | [**BankInfoResponse**](BankInfoResponse.md) |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::BalanceResponse.new(
  object: null,
  id: null,
  livemode: null,
  created_at: null,
  updated_at: null,
  state: null,
  statements: null,
  closed: null,
  closed_date: null,
  due_date: null,
  net: null,
  bank_info: null
)
```

