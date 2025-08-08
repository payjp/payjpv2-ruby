# PAYJPv2::ProductDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 商品ID |  |
| **object** | **String** |  | [optional][default to &#39;product&#39;] |
| **name** | **String** | Checkoutなどで顧客に表示される商品名。 |  |
| **active** | **Boolean** | 商品が購入可能かどうか。デフォルトは &#x60;true&#x60;。 |  |
| **default_price** | **String** |  |  |
| **description** | **String** |  |  |
| **unit_label** | **String** |  |  |
| **url** | **String** |  |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductDetailsResponse.new(
  id: null,
  object: null,
  name: null,
  active: null,
  default_price: null,
  description: null,
  unit_label: null,
  url: null
)
```

