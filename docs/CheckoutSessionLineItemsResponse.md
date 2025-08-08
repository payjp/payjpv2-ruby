# PAYJPv2::CheckoutSessionLineItemsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;list&#39;] |
| **data** | [**Array&lt;CheckoutSessionLineItemDataResponse&gt;**](CheckoutSessionLineItemDataResponse.md) | データ | [optional] |
| **has_more** | **Boolean** | 次のページがあるかどうか | [optional][default to false] |
| **url** | **String** | URL | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CheckoutSessionLineItemsResponse.new(
  object: null,
  data: null,
  has_more: null,
  url: null
)
```

