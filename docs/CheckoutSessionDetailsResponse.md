# PAYJPv2::CheckoutSessionDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID | [optional] |
| **object** | **String** |  | [optional][default to &#39;checkout.session&#39;] |
| **livemode** | **Boolean** | 本番環境かどうか | [optional] |
| **amount_subtotal** | **Integer** |  | [optional] |
| **amount_total** | **Integer** |  | [optional] |
| **billing_address_collection** | [**BillingAddressCollection**](BillingAddressCollection.md) |  | [optional] |
| **cancel_url** | **String** |  | [optional] |
| **customer** | [**Customer**](Customer.md) |  | [optional] |
| **customer_email** | **String** |  | [optional] |
| **customer_details** | **Object** | &#x60;expand&#x60; パラメーターを指定した場合、顧客の詳細情報を含んだオブジェクトが返却されます。  | 説明 | |:---| | **email**: 顧客のメールアドレス |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 | [optional] |
| **locale** | [**Locale**](Locale.md) |  | [optional] |
| **payment_intent** | [**PaymentIntent**](PaymentIntent.md) |  | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) |  | [optional] |
| **payment_method_options** | **Object** |  | [optional] |
| **setup_intent** | [**PaymentIntentDataRequest**](PaymentIntentDataRequest.md) |  | [optional] |
| **submit_type** | [**CheckoutSessionSubmitType**](CheckoutSessionSubmitType.md) |  | [optional] |
| **mode** | [**CheckoutSessionMode**](CheckoutSessionMode.md) | Checkout Session のモード  | 指定できる値 | |:---| | **hosted**: PAY.JPでホスティングしている画面を使用します。 |  | [optional] |
| **ui_mode** | [**CheckoutSessionUIMode**](CheckoutSessionUIMode.md) | Checkout Session の UI モード。デフォルトは &#x60;hosted&#x60; です。&lt;br&gt;  | 指定できる値 | |:---| | **hosted**: PAY.JPでホスティングしている画面を使用します。 |  | [optional] |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) | [optional] |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) | [optional] |
| **line_items** | [**CheckoutSessionLineItemsResponse**](CheckoutSessionLineItemsResponse.md) |  | [optional] |
| **success_url** | **String** |  | [optional] |
| **url** | **String** | URL | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionDetailsResponse.new(
  id: null,
  object: null,
  livemode: null,
  amount_subtotal: null,
  amount_total: null,
  billing_address_collection: null,
  cancel_url: null,
  customer: null,
  customer_email: null,
  customer_details: null,
  expires_at: null,
  currency: null,
  locale: null,
  payment_intent: null,
  payment_method_types: null,
  payment_method_options: null,
  setup_intent: null,
  submit_type: null,
  mode: null,
  ui_mode: null,
  created_at: null,
  updated_at: null,
  line_items: null,
  success_url: null,
  url: null
)
```

