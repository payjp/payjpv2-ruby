# PAYJPv2::TaxRateUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | この税率が有効であるかどうか。無効にした場合でも、すでに設定されている定期課金などでは使用可能です。 | [optional] |
| **country** | [**Country**](Country.md) | 有効な2文字の &lt;a href&#x3D;\&quot;https://ja.wikipedia.org/wiki/ISO_3166-1\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 国コード&lt;/a&gt; | [optional] |
| **description** | **String** | 説明。ダッシュボード内のみで表示され、顧客には表示されません。 | [optional] |
| **display_name** | **String** | 表示名。顧客に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::TaxRateUpdateRequest.new(
  active: null,
  country: null,
  description: null,
  display_name: null,
  metadata: null
)
```

