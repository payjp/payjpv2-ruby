# PAYJPv2::CheckoutSessionCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_reference_id** | **String** | ID | [optional] |
| **customer** | **String** | 顧客ID | [optional] |
| **customer_email** | **String** | 顧客オブジェクトを作成する時に使われます。指定されていない場合、顧客にメールアドレスの入力を求めます。すでに顧客のメールアドレスを持っている場合は、このパラメータを使ってあらかじめ情報を入力しておくことが可能です。支払いが完了した後に顧客情報を取得したい場合は、customer属性を使用します。 | [optional] |
| **customer_creation** | [**CustomerCreation**](CustomerCreation.md) | Checkout Session の確定時に Customer を作成するかどうかを指定します。&lt;br&gt; Customer が作成されない場合でも &#x60;customer_details&#x60; で Checkout に入力されたメールアドレス、住所、その他の顧客データを取得できます。&lt;br&gt; Customer を作成しない Session は、ダッシュボードでゲスト顧客としてグループ化されます。&lt;br&gt; &#x60;payment&#x60; および &#x60;setup&#x60; モードでのみ設定可能です。 | [optional] |
| **line_items** | [**Array&lt;LineItemRequest&gt;**](LineItemRequest.md) | 顧客が購入する商品のリストです。このパラメータを使用して、1回限りまたは定期的な料金を渡します。  &#x60;payment&#x60; モードの場合、最大100個のラインアイテムを使用できます。 &lt;!-- &#x60;subscription&#x60; モードの場合、定期的な料金のラインアイテムは最大20個、1回限りの料金のラインアイテムは最大20個です。1回限りの料金のラインアイテムは、最初の請求書にのみ記載されます。 --&gt;  | [optional] |
| **mode** | [**CheckoutSessionMode**](CheckoutSessionMode.md) | Checkout Session のモード  | 指定できる値 | |:---| | **hosted**: PAY.JPでホスティングしている画面を使用します。 |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **return_url** | **String** | 顧客が支払いを行うか、支払いをキャンセルした後にリダイレクトする URL です。 | [optional] |
| **success_url** | **String** | 支払いや設定が完了した際に、PAY.JP が顧客をリダイレクトするURL。成功したCheckout Sessionからの情報をページで使用したい場合は、成功ページのカスタマイズに関するガイドをお読みください。 | [optional] |
| **cancel_url** | **String** | キャンセル時のリダイレクトURL | [optional] |
| **billing_address_collection** | [**BillingAddressCollection**](BillingAddressCollection.md) | Checkout で顧客の請求先住所を収集するかどうかを指定します。デフォルトは &#x60;auto&#x60; です。  | 指定できる値 | |:---| | **auto**: 請求先住所が必要と判断した場合に入力欄が表示されます。 | | **required**: 常に請求先住所の入力欄が表示されまうs。 |  | [optional] |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 | [optional] |
| **expires_at** | **Time** | Checkout Session の有効期限が失効する日時。 | [optional] |
| **locale** | [**Locale**](Locale.md) | Checkout 画面の表示言語を指定します。  | 指定できる値 | |:---| | **ja**: 日本語で表示します。 |  | [optional] |
| **payment_flow_data** | [**PaymentFlowDataRequest**](PaymentFlowDataRequest.md) | &#x60;payment&#x60; モード指定時に PaymentFlow 作成に使用するパラメーター。 | [optional] |
| **payment_method_options** | [**PaymentMethodOptionsRequest**](PaymentMethodOptionsRequest.md) | この PaymentFlow の支払い方法の個別設定。 | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) | この PaymentFlow で使用できる支払い方法の種類（カードなど）のリストです。 指定しない場合、ダッシュボードで利用可能な状態にしている支払い方法を自動的に表示します。 | [optional] |
| **setup_flow_data** | [**SetupFlowDataRequest**](SetupFlowDataRequest.md) | &#x60;setup&#x60; モードの Checkout Session を作成する際、SetupFlow の作成に渡されるパラメーター | [optional] |
| **submit_type** | [**CheckoutSessionSubmitType**](CheckoutSessionSubmitType.md) | Checkout の画面上に表示される送信ボタンなど、ページ上の関連テキストをカスタマイズするために使用されます。&lt;br&gt; &#x60;submit_type&#x60; は、&#x60;payment&#x60; モードの Checkout Session でのみ指定できます。未指定時、あるいは &#x60;auto&#x60; の場合、&#x60;pay&#x60; が使用されます。  | 指定できる値 | |:---| | **auto**: &#x60;pay&#x60; が使用されます。 | | **pay**: 「支払う」（デフォルト） | | **book**: 「予約する」 | | **donate**: 「寄付する」 |  | [optional] |
| **ui_mode** | [**CheckoutSessionUIMode**](CheckoutSessionUIMode.md) | Checkout Session の UI モード。デフォルトは &#x60;hosted&#x60; です。&lt;br&gt;  | 指定できる値 | |:---| | **hosted**: PAY.JPでホスティングしている画面を使用します。 |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionCreateRequest.new(
  client_reference_id: null,
  customer: null,
  customer_email: null,
  customer_creation: null,
  line_items: null,
  mode: null,
  metadata: null,
  return_url: null,
  success_url: null,
  cancel_url: null,
  billing_address_collection: null,
  currency: null,
  expires_at: null,
  locale: null,
  payment_flow_data: null,
  payment_method_options: null,
  payment_method_types: null,
  setup_flow_data: null,
  submit_type: null,
  ui_mode: null
)
```

