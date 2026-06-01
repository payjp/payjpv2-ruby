# PAYJPv2::ProductDataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Checkout などで顧客に表示される商品名 |  |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ProductDataRequest.new(
  name: null,
  description: null
)
```

