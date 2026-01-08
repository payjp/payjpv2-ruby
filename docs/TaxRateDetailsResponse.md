# PAYJPv2::TaxRateDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;tax_rate&#39;] |
| **id** | **String** | 税率 ID |  |
| **display_name** | **String** | 表示名。顧客に表示されます。 |  |
| **inclusive** | **Boolean** | 税込みかどうか。税込 &#x3D; &#x60;true&#x60; 税抜 &#x3D; &#x60;false&#x60; |  |
| **percentage** | **Float** | 税率 (% 単位) |  |
| **active** | **Boolean** | この税率が有効であるかどうか |  |
| **country** | [**Country**](Country.md) |  |  |
| **description** | **String** |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |

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
  metadata: null
)
```

