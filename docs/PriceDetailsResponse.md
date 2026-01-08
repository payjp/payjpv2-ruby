# PAYJPv2::PriceDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;price&#39;] |
| **id** | **String** | 料金 ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **product_id** | **String** | この価格が紐付く商品の ID |  |
| **unit_amount** | **Integer** | 価格の単価 |  |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 |  |
| **active** | **Boolean** | 価格が有効かどうか |  |
| **nickname** | **String** |  |  |
| **type** | [**PriceType**](PriceType.md) | 一度限りの購入を表す &#x60;one_time&#x60; が入ります。 |  |
| **lookup_key** | **String** |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PriceDetailsResponse.new(
  object: null,
  id: null,
  livemode: null,
  product_id: null,
  unit_amount: null,
  currency: null,
  active: null,
  nickname: null,
  type: null,
  lookup_key: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

