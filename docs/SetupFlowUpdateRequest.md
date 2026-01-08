# PAYJPv2::SetupFlowUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | この SetupFlow に関連付ける顧客の ID。SetupFlow により作られた PaymentMethod はこの顧客に紐付きます。 | [optional] |
| **payment_method_options** | [**SetupFlowPaymentMethodOptionsRequest**](SetupFlowPaymentMethodOptionsRequest.md) | この SetupFlow 固有の支払い方法の設定 | [optional] |
| **payment_method_types** | **Array&lt;String&gt;** | この SetupFlow で使用できる支払い方法の種類のリスト。 指定しない場合は、PAY.JP は支払い方法の設定から利用可能な支払い方法を動的に表示します。 | [optional] |
| **description** | **String** | 説明。顧客に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。20件まで登録可能で、空文字列を指定するとそのキーを削除できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/developers/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupFlowUpdateRequest.new(
  customer_id: null,
  payment_method_options: null,
  payment_method_types: null,
  description: null,
  metadata: null
)
```

