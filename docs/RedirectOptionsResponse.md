# PAYJPv2::RedirectOptionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_client_secret** | **Boolean** | return_url へリダイレクトする際、クエリパラメーターに client_secret を付与するかどうか。デフォルトは &#x60;true&#x60; です。 | [optional][default to true] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::RedirectOptionsResponse.new(
  include_client_secret: null
)
```

