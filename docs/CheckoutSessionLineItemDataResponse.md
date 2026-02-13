# PAYJPv2::CheckoutSessionLineItemDataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;line_item&#39;] |
| **id** | **String** | ID |  |
| **amount_subtotal** | **Integer** | 割引や税金が適用される前のすべての商品の合計金額 |  |
| **amount_tax** | **Integer** | 税額 |  |
| **amount_total** | **Integer** | 割引と税金が適用された後のすべての商品の合計金額 |  |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 |  |
| **description** | **String** |  |  |
| **price** | [**PriceDetailsResponse**](PriceDetailsResponse.md) | 料金情報 |  |
| **quantity** | **Integer** | 数量 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionLineItemDataResponse.new(
  object: null,
  id: null,
  amount_subtotal: null,
  amount_tax: null,
  amount_total: null,
  currency: null,
  description: null,
  price: null,
  quantity: null
)
```

