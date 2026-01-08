# PAYJPv2::ProductDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;product&#39;] |
| **id** | **String** | 商品 ID |  |
| **name** | **String** | Checkout などで顧客に表示される商品名 |  |
| **active** | **Boolean** | 商品が購入可能かどうか |  |
| **default_price_id** | **String** |  |  |
| **description** | **String** |  |  |
| **unit_label** | **String** |  |  |
| **url** | **String** |  |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductDetailsResponse.new(
  object: null,
  id: null,
  name: null,
  active: null,
  default_price_id: null,
  description: null,
  unit_label: null,
  url: null
)
```

