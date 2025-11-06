# PAYJPv2::PaymentFlowConfirmRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** | 支払い方法ID | [optional] |
| **payment_method_data** | [**PaymentMethodCreateRequest**](PaymentMethodCreateRequest.md) | 指定した場合、PaymentMethodの作成に使用されます。新しいPaymentMethodは、PaymentFlowのpayment_methodプロパティに表示されます。 | [optional] |
| **payment_method_options** | [**PaymentMethodOptionsRequest**](PaymentMethodOptionsRequest.md) | このPaymentFlowに固有の支払い方法の設定 | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) | このPaymentFlowで使用できる支払い方法の種類（カードなど）のリストです。 指定しない場合は、PAY.JPは支払い方法の設定から利用可能な支払い方法を動的に表示します。 | [optional] |
| **receipt_email** | **String** | 請求書の送信先メールアドレス。ライブモードで支払いに対して &#x60;receipt_email&#x60; を指定すると、メール設定に関係なく領収書が送信されます。 | [optional] |
| **return_url** | **String** | 顧客が支払いを完了後かキャンセルした後にリダイレクトされるURL。アプリにリダイレクトしたい場合は URI Scheme を指定できます。confirm&#x3D;trueの場合のみ指定できます。 | [optional] |
| **description** | **String** | オブジェクトにセットする任意の文字列。ユーザーには表示されません。 | [optional] |
| **capture_method** | [**CaptureMethod**](CaptureMethod.md) | 支払いの確定方法を指定します。  | 指定できる値 | |:---| | **automatic**: (デフォルト) 顧客が支払いを承認すると、自動的に確定させます。 | | **manual**: 顧客が支払いを承認すると一旦確定を保留し、後で Capture API を使用して確定します。（すべての支払い方法がこれをサポートしているわけではありません）。 | | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowConfirmRequest.new(
  payment_method: null,
  payment_method_data: null,
  payment_method_options: null,
  payment_method_types: null,
  receipt_email: null,
  return_url: null,
  description: null,
  capture_method: null
)
```

