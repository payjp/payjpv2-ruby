# PAYJPv2::PriceListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;list&#39;] |
| **url** | **String** | リスト取得URL |  |
| **has_more** | **Boolean** | 次のページがあるかどうか |  |
| **data** | [**Array&lt;PriceDetailsResponse&gt;**](PriceDetailsResponse.md) |  |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PriceListResponse.new(
  object: null,
  url: null,
  has_more: null,
  data: null
)
```

