# PAYJPv2::CheckoutSessionDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;checkout.session&#39;] |
| **id** | **String** | Checkout Session ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **amount_subtotal** | **Integer** |  |  |
| **amount_total** | **Integer** |  |  |
| **customer_id** | **String** |  |  |
| **customer_email** | **String** |  |  |
| **customer_details** | [**CheckoutSessionCustomerDetailsResponse**](CheckoutSessionCustomerDetailsResponse.md) |  | [optional] |
| **expires_at** | **Time** |  |  |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 |  |
| **locale** | [**Locale**](Locale.md) |  |  |
| **payment_flow_id** | **String** |  | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) |  |  |
| **payment_method_options** | **Hash&lt;String, Object&gt;** |  |  |
| **setup_flow_id** | **String** |  | [optional] |
| **submit_type** | [**CheckoutSessionSubmitType**](CheckoutSessionSubmitType.md) |  |  |
| **mode** | [**CheckoutSessionMode**](CheckoutSessionMode.md) | Checkout Session のモード  | 値 | |:---| | **payment**: 支払いモード | | **setup**: セットアップモード | |  |
| **ui_mode** | [**CheckoutSessionUIMode**](CheckoutSessionUIMode.md) | Checkout Session の UI モード  | 値 | |:---| | **hosted**: PAY.JP でホスティングしている画面を使用します。 | |  |
| **status** | [**CheckoutSessionStatus**](CheckoutSessionStatus.md) | チェックアウトセッションのステータス |  |
| **success_url** | **String** |  |  |
| **cancel_url** | **String** |  |  |
| **url** | **String** | URL |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionDetailsResponse.new(
  object: null,
  id: null,
  livemode: null,
  amount_subtotal: null,
  amount_total: null,
  customer_id: null,
  customer_email: null,
  customer_details: null,
  expires_at: null,
  currency: null,
  locale: null,
  payment_flow_id: null,
  payment_method_types: null,
  payment_method_options: null,
  setup_flow_id: null,
  submit_type: null,
  mode: null,
  ui_mode: null,
  status: null,
  success_url: null,
  cancel_url: null,
  url: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

