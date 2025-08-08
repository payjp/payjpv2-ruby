# PAYJPv2::ProductDeletedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 商品ID |  |
| **object** | **String** |  | [optional][default to &#39;product&#39;] |
| **deleted** | **Boolean** | 削除されたかどうか | [readonly] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductDeletedResponse.new(
  id: null,
  object: null,
  deleted: null
)
```

