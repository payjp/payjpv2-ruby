# PAYJPv2::SetupIntentUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | **String** | この SetupIntent が属する顧客の ID。SetupIntent に PaymentMethod が設定されている場合、SetupIntent の設定が成功するとその PaymentMethod は顧客に紐付きます。別の顧客に紐付いている PaymentMethod をこの SetupIntent で使用することはできません。 | [optional] |
| **payment_method** | **String** | この SetupIntent に紐付ける決済方法のID | [optional] |
| **payment_method_options** | **Object** | この SetupIntent の支払い方法の個別設定。 | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) |  | [optional] |
| **description** | **String** | 説明。顧客に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupIntentUpdateRequest.new(
  customer: null,
  payment_method: null,
  payment_method_options: null,
  payment_method_types: null,
  description: null,
  metadata: null
)
```

