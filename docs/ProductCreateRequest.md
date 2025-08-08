# PAYJPv2::ProductCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_price** | **String** | この商品のデフォルト価格である価格オブジェクトのID。 | [optional] |
| **description** | **String** | Checkoutなどで顧客に表示される商品説明。 | [optional] |
| **unit_label** | **String** | この製品の単位を表すラベル。設定すると、Checkoutや請求書などに表示されます。（例：「個」、「ライセンス」、「時間」、「回」など） | [optional] |
| **url** | **String** | この製品の公開されているウェブページのURL。 | [optional] |
| **id** | **String** | 商品ID | [optional] |
| **name** | **String** | Checkoutなどで顧客に表示される商品名。 |  |
| **active** | **Boolean** | 商品が購入可能かどうか。デフォルトは &#x60;true&#x60;。 | [optional][default to true] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductCreateRequest.new(
  default_price: null,
  description: null,
  unit_label: null,
  url: null,
  id: null,
  name: null,
  active: null
)
```

