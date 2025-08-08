# PAYJPv2::PriceUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nickname** | **String** | 価格の名称。PAY.JP のダッシュボードで識別するためのもので、顧客には表示されません。 | [optional] |
| **lookup_key** | **String** | この価格を検索するためのキー。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **active** | **Boolean** | 価格が有効かどうか。デフォルトは &#x60;true&#x60;。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PriceUpdateRequest.new(
  nickname: null,
  lookup_key: null,
  metadata: null,
  active: null
)
```

