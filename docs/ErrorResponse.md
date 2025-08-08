# PAYJPv2::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **title** | **String** |  |  |
| **status** | **Integer** |  |  |
| **detail** | **String** |  | [optional] |
| **instance** | **String** |  | [optional] |
| **errors** | **Array&lt;Hash&lt;String, String&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::ErrorResponse.new(
  type: null,
  title: null,
  status: null,
  detail: null,
  instance: null,
  errors: null
)
```

