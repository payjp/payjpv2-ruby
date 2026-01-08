# PAYJPv2::BalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;balance&#39;] |
| **id** | **String** | 残高 ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **state** | [**BalanceState**](BalanceState.md) | Balance の状態  | 値 | |:---| | **collecting**: 集計中 | | **transfer**: 入金 | | **claim**: 請求 | |  |
| **statements** | [**Array&lt;StatementResponse&gt;**](StatementResponse.md) | 関連付けられている Statement オブジェクトのリスト |  |
| **closed** | **Boolean** | この Balance の清算が終了していれば true  state&#x3D;transfer であれば加盟店口座への入金作業完了、state&#x3D;claim であれば PAY.JP で請求額の振込が確認できたことを表します。 |  |
| **closed_date** | **Time** |  |  |
| **due_date** | **Time** |  |  |
| **net** | **Integer** | 関連付けられている Statement の総額 |  |
| **bank_info** | [**BankInfoResponse**](BankInfoResponse.md) |  |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新時の日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::BalanceResponse.new(
  object: null,
  id: null,
  livemode: null,
  state: null,
  statements: null,
  closed: null,
  closed_date: null,
  due_date: null,
  net: null,
  bank_info: null,
  created_at: null,
  updated_at: null
)
```

