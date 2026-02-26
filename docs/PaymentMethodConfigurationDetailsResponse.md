# PAYJPv2::PaymentMethodConfigurationDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;payment_method_configuration&#39;] |
| **id** | **String** | 支払い方法設定 ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **active** | **Boolean** | 設定が有効かどうか |  |
| **name** | **String** |  |  |
| **paypay** | [**PaymentMethodConfigurationSettingResponse**](PaymentMethodConfigurationSettingResponse.md) | PayPay の設定 |  |
| **card** | [**PaymentMethodConfigurationSettingResponse**](PaymentMethodConfigurationSettingResponse.md) | カードの設定 |  |
| **apple_pay** | [**PaymentMethodConfigurationSettingResponse**](PaymentMethodConfigurationSettingResponse.md) | Apple Pay の設定 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodConfigurationDetailsResponse.new(
  object: null,
  id: null,
  livemode: null,
  active: null,
  name: null,
  paypay: null,
  card: null,
  apple_pay: null
)
```

