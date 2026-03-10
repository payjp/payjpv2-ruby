# PAYJPv2::ProductDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;product&#39;] |
| **id** | **String** | 商品 ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **name** | **String** | Checkout などで顧客に表示される商品名 |  |
| **active** | **Boolean** | 商品が購入可能かどうか |  |
| **default_price_id** | **String** |  |  |
| **description** | **String** |  |  |
| **unit_label** | **String** |  |  |
| **url** | **String** |  |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductDetailsResponse.new(
  object: null,
  id: null,
  livemode: null,
  name: null,
  active: null,
  default_price_id: null,
  description: null,
  unit_label: null,
  url: null,
  created_at: null,
  updated_at: null
)
```

