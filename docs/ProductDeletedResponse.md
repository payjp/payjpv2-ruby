# PAYJPv2::ProductDeletedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;product&#39;] |
| **id** | **String** | 商品 ID |  |
| **deleted** | **Boolean** | 削除されたかどうか | [optional][default to true] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductDeletedResponse.new(
  object: null,
  id: null,
  deleted: null
)
```

