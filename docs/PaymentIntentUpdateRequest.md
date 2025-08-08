# PAYJPv2::PaymentIntentUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** | 支払い方法ID | [optional] |
| **payment_method_data** | [**PaymentMethodCreateRequest**](PaymentMethodCreateRequest.md) | 指定した場合、PaymentMethodの作成に使用されます。新しいPaymentMethodは、PaymentIntentのpayment_methodプロパティに表示されます。 | [optional] |
| **payment_method_options** | [**PaymentMethodOptionsRequest**](PaymentMethodOptionsRequest.md) | このPaymentIntentに固有の支払い方法の設定 | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) | このPaymentIntentで使用できる支払い方法の種類（カードなど）のリストです。 指定しない場合は、PAY.JPは支払い方法の設定から利用可能な支払い方法を動的に表示します。 | [optional] |
| **receipt_email** | **String** | 請求書の送信先メールアドレス。ライブモードで支払いに対して &#x60;receipt_email&#x60; を指定すると、メール設定に関係なく領収書が送信されます。 | [optional] |
| **return_url** | **String** | 顧客が支払いを完了後かキャンセルした後にリダイレクトされるURL。アプリにリダイレクトしたい場合は URI Scheme を指定できます。confirm&#x3D;trueの場合のみ指定できます。 | [optional] |
| **description** | **String** | オブジェクトにセットする任意の文字列。ユーザーには表示されません。 | [optional] |
| **amount** | **Integer** | 支払い予定の金額。50円以上9,999,999円以下である必要があります。支払い手段によって上限金額は異なります。 | [optional] |
| **customer** | **String** | このPaymentIntentに属する顧客のID（存在する場合）。この顧客以外にすでに紐づけられている支払い方法はこのPaymentIntentでは使用できません。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentIntentUpdateRequest.new(
  payment_method: null,
  payment_method_data: null,
  payment_method_options: null,
  payment_method_types: null,
  receipt_email: null,
  return_url: null,
  description: null,
  amount: null,
  customer: null,
  metadata: null
)
```

