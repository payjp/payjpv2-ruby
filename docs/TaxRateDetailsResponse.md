# PAYJPv2::TaxRateDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;tax_rate&#39;] |
| **id** | **String** | ID | [optional] |
| **display_name** | **String** | 表示名。顧客に表示されます。 | [optional] |
| **inclusive** | **Boolean** | 税込みかどうか。税込 &#x3D; &#x60;true&#x60; 税抜 &#x3D; &#x60;false&#x60; | [optional] |
| **percentage** | **Float** | 税率を % 単位で指定します（例： 10%の場合は「10」と入力） | [optional] |
| **active** | **Boolean** | この税率が有効であるかどうか。無効にした場合でも、すでに設定されている定期課金などでは使用可能です。 | [optional] |
| **country** | [**Country**](Country.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **tax_type** | [**TaxType**](TaxType.md) |  | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::TaxRateDetailsResponse.new(
  object: null,
  id: null,
  display_name: null,
  inclusive: null,
  percentage: null,
  active: null,
  country: null,
  description: null,
  tax_type: null,
  metadata: null
)
```

