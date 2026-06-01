# PAYJPv2::PriceDataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**Currency**](Currency.md) | 通貨。現在は &#x60;jpy&#x60; のみサポートしています。 |  |
| **unit_amount** | **Integer** | 単価（0以上の整数） |  |
| **product_id** | **String** |  | [optional] |
| **product_data** | [**ProductDataRequest**](ProductDataRequest.md) |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PriceDataRequest.new(
  currency: null,
  unit_amount: null,
  product_id: null,
  product_data: null
)
```

