# PAYJPv2::DisplayPreferenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preference** | **String** | この支払い方法がアカウントで有効になっているかどうか。  | 指定できる値 | |:---| | **on**: この決済手段を決済画面に表示する | | **off**: この決済手段を決済画面に表示しない | | **none**: デフォルト設定を使用 | |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::DisplayPreferenceRequest.new(
  preference: null
)
```

