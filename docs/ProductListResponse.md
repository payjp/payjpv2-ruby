# PAYJPv2::ProductListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;list&#39;] |
| **url** | **String** | リスト取得URL |  |
| **has_more** | **Boolean** | 次のページがあるかどうか |  |
| **data** | [**Array&lt;ProductDetailsResponse&gt;**](ProductDetailsResponse.md) |  |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductListResponse.new(
  object: null,
  url: null,
  has_more: null,
  data: null
)
```

