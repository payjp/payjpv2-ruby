# PAYJPv2::PaymentTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID |  |
| **object** | **String** |  | [optional][default to &#39;payment_transaction&#39;] |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **resource_id** | **String** | PaymentTransaction生成の元になったリソースのID |  |
| **amount** | **Integer** | 金額 |  |
| **currency** | [**Currency**](Currency.md) | 通貨 |  |
| **fee_rate** | **String** | 手数料率 |  |
| **fee** | **Integer** | 手数料 |  |
| **type** | [**PaymentTransactionType**](PaymentTransactionType.md) | PaymentTransactionの種類 |  |
| **payment_method_type** | [**PaymentMethodTypes**](PaymentMethodTypes.md) | 支払い方法の種類 |  |
| **term** | **String** | 期間ID |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentTransactionResponse.new(
  id: null,
  object: null,
  created_at: null,
  updated_at: null,
  livemode: null,
  resource_id: null,
  amount: null,
  currency: null,
  fee_rate: null,
  fee: null,
  type: null,
  payment_method_type: null,
  term: null
)
```

