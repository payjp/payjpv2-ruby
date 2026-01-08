# PAYJPv2::TaxRateCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | 表示名。顧客に表示されます。 |  |
| **inclusive** | **Boolean** | 税込みかどうか。税込 &#x3D; &#x60;true&#x60; 税抜 &#x3D; &#x60;false&#x60; |  |
| **percentage** | **Float** | 税率を % 単位で指定します（例: 10%の場合は「10」と入力） |  |
| **active** | **Boolean** | この税率が有効であるかどうか。無効にした場合でも、すでに設定されている定期課金などでは使用可能です。 | [optional][default to true] |
| **country** | [**Country**](Country.md) | 有効な2文字の &lt;a href&#x3D;\&quot;https://ja.wikipedia.org/wiki/ISO_3166-1\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 国コード&lt;/a&gt; | [optional] |
| **description** | **String** | 説明。管理画面内のみで表示され、顧客には表示されません。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。20件まで登録可能で、空文字列を指定するとそのキーを削除できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/developers/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::TaxRateCreateRequest.new(
  display_name: null,
  inclusive: null,
  percentage: null,
  active: null,
  country: null,
  description: null,
  metadata: null
)
```

