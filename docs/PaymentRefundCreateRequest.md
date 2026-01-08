# PAYJPv2::PaymentRefundCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_flow_id** | **String** | 返金対象となる PaymentFlow の ID |  |
| **amount** | **Integer** | 返金金額。省略すると全額返金となります。 | [optional] |
| **reason** | [**PaymentRefundReason**](PaymentRefundReason.md) | 返金理由  | 値 | |:---| | **duplicate**: 重複した支払い | | **fraudulent**: 不正な支払い | | **requested_by_customer**: 顧客の要求 | | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。20件まで登録可能で、空文字列を指定するとそのキーを削除できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/developers/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentRefundCreateRequest.new(
  payment_flow_id: null,
  amount: null,
  reason: null,
  metadata: null
)
```

