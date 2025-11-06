# PAYJPv2::SetupFlowUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | **String** | この SetupFlow が属する顧客の ID。SetupFlow に PaymentMethod が設定されている場合、SetupFlow の設定が成功するとその PaymentMethod は顧客に紐付きます。別の顧客に紐付いている PaymentMethod をこの SetupFlow で使用することはできません。 | [optional] |
| **payment_method** | **String** | この SetupFlow に紐付ける決済方法のID | [optional] |
| **payment_method_options** | **Hash&lt;String, Object&gt;** | この SetupFlow の支払い方法の個別設定。 | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) |  | [optional] |
| **description** | **String** | 説明。顧客に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupFlowUpdateRequest.new(
  customer: null,
  payment_method: null,
  payment_method_options: null,
  payment_method_types: null,
  description: null,
  metadata: null
)
```

