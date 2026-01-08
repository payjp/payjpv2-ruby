# PAYJPv2::BankInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_code** | **String** | 銀行コード |  |
| **bank_branch_code** | **String** | 支店番号 |  |
| **bank_account_type** | **String** | 口座種別 |  |
| **bank_account_number** | **String** | 口座番号 |  |
| **bank_account_holder_name** | **String** | 口座名義 |  |
| **bank_account_status** | **String** | 最新振込結果  | 値 | |:---| | **success**: 成功 | | **failed**: 失敗 | | **pending**: 初回振込み前 | |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::BankInfoResponse.new(
  bank_code: null,
  bank_branch_code: null,
  bank_account_type: null,
  bank_account_number: null,
  bank_account_holder_name: null,
  bank_account_status: null
)
```

