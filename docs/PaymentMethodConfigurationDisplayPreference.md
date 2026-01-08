# PAYJPv2::PaymentMethodConfigurationDisplayPreference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preference** | **String** | この支払い方法がアカウントで有効になっているかどうか  | 値 | |:---| | **on**: この決済手段を決済画面に表示する | | **off**: この決済手段を決済画面に表示しない | | **none**: デフォルト設定を使用 | | [optional] |
| **value** | **String** | この支払い方法を決済画面に表示するかどうか。  | 値 | |:---| | **on**: この決済手段を決済画面に表示する | | **off**: この決済手段を決済画面に表示しない | | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodConfigurationDisplayPreference.new(
  preference: null,
  value: null
)
```

