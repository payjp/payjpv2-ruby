# PAYJPv2::StatementItemResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | [**StatementSubject**](StatementSubject.md) | 明細項目の種別 |  |
| **name** | **String** |  |  |
| **amount** | **Integer** | 明細項目の金額 |  |
| **tax_rate** | **String** |  |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::StatementItemResponse.new(
  subject: null,
  name: null,
  amount: null,
  tax_rate: null
)
```

