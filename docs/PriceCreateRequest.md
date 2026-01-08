# PAYJPv2::PriceCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | この価格が紐付く商品の ID |  |
| **unit_amount** | **Integer** | 価格の単価 |  |
| **currency** | [**Currency**](Currency.md) | 価格の通貨。現在は &#x60;jpy&#x60; のみサポートしています。 |  |
| **id** | **String** | 料金 ID | [optional] |
| **active** | **Boolean** | 価格が有効かどうか | [optional][default to true] |
| **nickname** | **String** | 価格の名称。PAY.JP の管理画面で識別するためのもので、顧客には表示されません。 | [optional] |
| **lookup_key** | **String** | この価格を検索するためのキー | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。20件まで登録可能で、空文字列を指定するとそのキーを削除できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/developers/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PriceCreateRequest.new(
  product_id: null,
  unit_amount: null,
  currency: null,
  id: null,
  active: null,
  nickname: null,
  lookup_key: null,
  metadata: null
)
```

