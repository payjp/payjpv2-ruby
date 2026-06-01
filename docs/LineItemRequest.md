# PAYJPv2::LineItemRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_id** | **String** |  | [optional] |
| **price_data** | [**PriceDataRequest**](PriceDataRequest.md) |  | [optional] |
| **quantity** | **Integer** | 購入する商品の数量 |  |
| **tax_rates** | **Array&lt;String&gt;** | 税率 ID | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::LineItemRequest.new(
  price_id: null,
  price_data: null,
  quantity: null,
  tax_rates: null
)
```

