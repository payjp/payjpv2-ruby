# PAYJPv2::RedirectOptionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_client_secret** | **Boolean** | return_url へリダイレクトする際、クエリパラメーターに client_secret を付与するかどうか。デフォルトは &#x60;true&#x60; です。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::RedirectOptionsRequest.new(
  include_client_secret: null
)
```

