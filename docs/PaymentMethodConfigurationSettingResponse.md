# PAYJPv2::PaymentMethodConfigurationSettingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Boolean** | この支払い方法が決済画面に表示されるかどうか。&#x60;display_preference.preference&#x60; と &#x60;display_preference.value&#x60; の両方が &#x60;on&#x60; の場合に決済画面に表示されます。 | [optional] |
| **display_preference** | [**PaymentMethodConfigurationDisplayPreference**](PaymentMethodConfigurationDisplayPreference.md) | 支払い方法の表示設定 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodConfigurationSettingResponse.new(
  available: null,
  display_preference: null
)
```

