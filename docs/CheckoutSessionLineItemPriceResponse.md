# PAYJPv2::CheckoutSessionLineItemPriceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 料金ID | [optional] |
| **object** | **String** |  | [optional][default to &#39;price&#39;] |
| **livemode** | **Boolean** | 本番環境かどうか | [optional] |
| **active** | **Boolean** | 有効かどうか | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ | [optional] |
| **nickname** | **String** |  | [optional] |
| **type** | [**PriceType**](PriceType.md) | 料金の種類 | [optional] |
| **lookup_key** | **String** |  | [optional] |
| **currency** | [**Currency**](Currency.md) | 通貨 | [optional] |
| **product** | **String** | 商品ID | [optional] |
| **unit_amount** | **Integer** | 単価 | [optional] |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) | [optional] |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionLineItemPriceResponse.new(
  id: null,
  object: null,
  livemode: null,
  active: null,
  metadata: null,
  nickname: null,
  type: null,
  lookup_key: null,
  currency: null,
  product: null,
  unit_amount: null,
  created_at: null,
  updated_at: null
)
```

