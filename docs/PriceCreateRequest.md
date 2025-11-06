# PAYJPv2::PriceCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nickname** | **String** | 価格の名称。PAY.JP のダッシュボードで識別するためのもので、顧客には表示されません。 | [optional] |
| **lookup_key** | **String** | この価格を検索するためのキー。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **id** | **String** | 料金ID | [optional] |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 |  |
| **active** | **Boolean** | 価格が有効かどうか。デフォルトは &#x60;true&#x60;。 | [optional][default to true] |
| **product** | **String** | この価格が紐付く商品のID。 |  |
| **unit_amount** | **Integer** | 価格の単価。0以上の整数となります。 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PriceCreateRequest.new(
  nickname: null,
  lookup_key: null,
  metadata: null,
  id: null,
  currency: null,
  active: null,
  product: null,
  unit_amount: null
)
```

