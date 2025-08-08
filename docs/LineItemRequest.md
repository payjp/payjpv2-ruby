# PAYJPv2::LineItemRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustable_quantity** | [**LineItemAdjustableQuantityRequest**](LineItemAdjustableQuantityRequest.md) | Checkout 画面で顧客がこの商品の購入数量を変更できるようにする。 | [optional] |
| **price** | **String** | 料金ID | [optional] |
| **quantity** | **Integer** | 購入する商品の数量 |  |
| **tax_rates** | **Array&lt;String&gt;** | 税率ID | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::LineItemRequest.new(
  adjustable_quantity: null,
  price: null,
  quantity: null,
  tax_rates: null
)
```

