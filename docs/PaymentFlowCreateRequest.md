# PAYJPv2::PaymentFlowCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** | 支払い方法ID | [optional] |
| **payment_method_options** | [**PaymentMethodOptionsRequest**](PaymentMethodOptionsRequest.md) | このPaymentFlowに固有の支払い方法の設定 | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) | このPaymentFlowで使用できる支払い方法の種類（カードなど）のリストです。 指定しない場合は、PAY.JPは支払い方法の設定から利用可能な支払い方法を動的に表示します。 | [optional] |
| **receipt_email** | **String** | 請求書の送信先メールアドレス。ライブモードで支払いに対して &#x60;receipt_email&#x60; を指定すると、メール設定に関係なく領収書が送信されます。 | [optional] |
| **return_url** | **String** | 顧客が支払いを完了後かキャンセルした後にリダイレクトされるURL。アプリにリダイレクトしたい場合は URI Scheme を指定できます。confirm&#x3D;trueの場合のみ指定できます。 | [optional] |
| **description** | **String** | オブジェクトにセットする任意の文字列。ユーザーには表示されません。 | [optional] |
| **amount** | **Integer** | 支払い予定の金額。50円以上9,999,999円以下である必要があります。支払い手段によって上限金額は異なります。 |  |
| **customer** | **String** | このPaymentFlowに属する顧客のID（存在する場合）。この顧客以外にすでに紐づけられている支払い方法はこのPaymentFlowでは使用できません。 | [optional] |
| **confirm** | **Boolean** | 「true」に設定すると、このPaymentFlowを直ちに確定しようと試みます。このパラメーターのデフォルトは「false」です。 | [optional][default to false] |
| **capture_method** | [**CaptureMethod**](CaptureMethod.md) | 支払いの確定方法を指定します。  | 指定できる値 | |:---| | **automatic**: (デフォルト) 顧客が支払いを承認すると、自動的に確定させます。 | | **manual**: 顧客が支払いを承認すると一旦確定を保留し、後で Capture API を使用して確定します。（すべての支払い方法がこれをサポートしているわけではありません）。 | | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **setup_future_usage** | [**Usage**](Usage.md) | このPaymentFlowの支払い方法で将来の支払いを行う意図があることを示します。&lt;br&gt;&lt;br&gt;PaymentFlow に Customer を指定した場合、このパラメータを使って PaymentFlow を確定できます。その後、顧客が必要な操作を完了すると、支払い方法を Customer に紐付けることが可能です。また、Customer を指定しない場合でも、取引が完了した後に支払い方法を Customer に紐付けることはできます。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowCreateRequest.new(
  payment_method: null,
  payment_method_options: null,
  payment_method_types: null,
  receipt_email: null,
  return_url: null,
  description: null,
  amount: null,
  customer: null,
  confirm: null,
  capture_method: null,
  metadata: null,
  setup_future_usage: null
)
```

