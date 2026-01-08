# PAYJPv2::ProductUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Checkout などで顧客に表示される商品名 | [optional] |
| **active** | **Boolean** | 商品が購入可能かどうか | [optional] |
| **default_price_id** | **String** | この商品のデフォルト価格である価格オブジェクトの ID | [optional] |
| **description** | **String** | Checkout などで顧客に表示される商品説明 | [optional] |
| **unit_label** | **String** | この製品の単位を表すラベル。設定すると、Checkout などに表示されます。（例：「個」、「ライセンス」、「時間」、「回」など） | [optional] |
| **url** | **String** | この製品の公開されているウェブページの URL | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductUpdateRequest.new(
  name: null,
  active: null,
  default_price_id: null,
  description: null,
  unit_label: null,
  url: null
)
```

