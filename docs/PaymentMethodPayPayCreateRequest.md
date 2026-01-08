# PAYJPv2::PaymentMethodPayPayCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | 顧客 ID | [optional] |
| **billing_details** | [**PaymentMethodBillingDetailsRequest**](PaymentMethodBillingDetailsRequest.md) | 請求先情報 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。20件まで登録可能で、空文字列を指定するとそのキーを削除できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/developers/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **type** | **String** | PayPay 決済の場合は &#x60;paypay&#x60; を指定します。 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodPayPayCreateRequest.new(
  customer_id: null,
  billing_details: null,
  metadata: null,
  type: null
)
```

