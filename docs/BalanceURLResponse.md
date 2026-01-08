# PAYJPv2::BalanceURLResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;balance_url&#39;] |
| **url** | **String** | 残高明細書ダウンロード URL |  |
| **expires** | **Time** | 有効期限の日付  有効期限は発行から1時間です。 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::BalanceURLResponse.new(
  object: null,
  url: null,
  expires: null
)
```

