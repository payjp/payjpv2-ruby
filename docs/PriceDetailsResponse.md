# PAYJPv2::PriceDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 料金ID | [optional] |
| **object** | **String** |  | [optional][default to &#39;price&#39;] |
| **livemode** | **Boolean** | 本番環境かどうか | [optional] |
| **active** | **Boolean** | 価格が有効かどうか。デフォルトは &#x60;true&#x60;。 | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | メタデータ | [optional] |
| **nickname** | **String** |  | [optional] |
| **type** | [**PriceType**](PriceType.md) | 価格が一度限りの購入か、継続的な（サブスクリプション）購入かに応じて、&#x60;one_time&#x60; または &#x60;recurring&#x60; のいずれかとなります。  | 指定できる値 | |:---| | **one_time**: 1回限りの価格。 | | **recurring**: 継続的な価格。 | | [optional] |
| **lookup_key** | **String** |  | [optional] |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 | [optional] |
| **product** | **String** | この価格が紐付く商品のID。 | [optional] |
| **unit_amount** | **Integer** | 価格の単価。0以上の整数となります。 | [optional] |
| **created_at** | **Time** | 支払い方法作成時の日時 (UTC, ISO 8601 形式) | [optional] |
| **updated_at** | **Time** | 支払い方法更新時の日時 (UTC, ISO 8601 形式) | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PriceDetailsResponse.new(
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

