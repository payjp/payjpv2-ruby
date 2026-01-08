# PAYJPv2::PaymentTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;payment_transaction&#39;] |
| **id** | **String** | 決済トランザクション ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **resource_id** | **String** | PaymentTransaction 生成の元になったリソースの ID |  |
| **amount** | **Integer** | 金額 |  |
| **currency** | [**Currency**](Currency.md) | 通貨 |  |
| **fee_rate** | **String** | 手数料率 |  |
| **fee** | **Integer** | 手数料 |  |
| **type** | [**PaymentTransactionType**](PaymentTransactionType.md) | PaymentTransaction の種類  | 値 | |:---| | **payment**: 支払い | | **refund**: 返金 | | **chargeback**: チャージバック | | **chargeback_cancel**: チャージバックのキャンセル |  |  |
| **payment_method_type** | [**PaymentMethodTypes**](PaymentMethodTypes.md) | 支払い方法の種類 |  |
| **term_id** | **String** | 集計区間 ID |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentTransactionResponse.new(
  object: null,
  id: null,
  livemode: null,
  resource_id: null,
  amount: null,
  currency: null,
  fee_rate: null,
  fee: null,
  type: null,
  payment_method_type: null,
  term_id: null,
  created_at: null,
  updated_at: null
)
```

