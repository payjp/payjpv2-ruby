# PAYJPv2::RefundCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent** | **String** | 返金対象となる PaymentIntent の ID |  |
| **amount** | **Integer** | 返金金額 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **reason** | [**PaymentRefundReason**](PaymentRefundReason.md) | 返金理由  | 指定できる値 | |:---| | **duplicate**: 重複した支払い | | **fraudulent**: 不正な支払い | | **requested_by_customer**: 顧客の要求 | | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::RefundCreateRequest.new(
  payment_intent: null,
  amount: null,
  metadata: null,
  reason: null
)
```

