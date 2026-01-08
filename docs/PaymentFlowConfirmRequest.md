# PAYJPv2::PaymentFlowConfirmRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** | 支払い方法 ID。customer_id の指定が必須です。Customer が所持する PaymentMethod のみ指定できます。payment_method_id を指定せず、Customer に default_payment_method_id が設定されている場合はそちらが自動でセットされます。 | [optional] |
| **payment_method_options** | [**PaymentFlowPaymentMethodOptionsRequest**](PaymentFlowPaymentMethodOptionsRequest.md) | この PaymentFlow 固有の支払い方法の設定 | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) | この PaymentFlow で使用できる支払い方法の種類のリスト。指定しない場合は、PAY.JP は支払い方法の設定から利用可能な支払い方法を動的に表示します。 | [optional] |
| **capture_method** | [**CaptureMethod**](CaptureMethod.md) | 支払いの確定方法を指定します。  | 値 | |:---| | **automatic**: (デフォルト) 顧客が支払いを承認すると、自動的に確定させます。 | | **manual**: 顧客が支払いを承認すると一旦確定を保留し、後で Capture API を使用して確定します。（すべての支払い方法がこれをサポートしているわけではありません）。 | | [optional] |
| **return_url** | **String** | 顧客が支払いを完了後かキャンセルした後にリダイレクトされる URL。アプリにリダイレクトしたい場合は URI Scheme を指定できます。 | [optional] |
| **description** | **String** | オブジェクトにセットする任意の文字列。ユーザーには表示されません。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowConfirmRequest.new(
  payment_method_id: null,
  payment_method_options: null,
  payment_method_types: null,
  capture_method: null,
  return_url: null,
  description: null
)
```

