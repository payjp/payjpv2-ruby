# PAYJPv2::PaymentMethodPayPayCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | **String** | 顧客ID | [optional] |
| **billing_details** | [**PaymentMethodBillingDetailsRequest**](PaymentMethodBillingDetailsRequest.md) | 請求先情報 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **type** | **String** | PayPay決済の場合は &#x60;paypay&#x60; を指定します。 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodPayPayCreateRequest.new(
  customer: null,
  billing_details: null,
  metadata: null,
  type: null
)
```

