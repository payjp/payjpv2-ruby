# PAYJPv2::StatementURLResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;statement_url&#39;] |
| **url** | **String** | 取引明細書ダウンロードURL |  |
| **expires** | **Time** | 有効期限の日付。  有効期限は発行から1時間です。 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::StatementURLResponse.new(
  object: null,
  url: null,
  expires: null
)
```

