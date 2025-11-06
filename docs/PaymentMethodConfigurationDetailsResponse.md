# PAYJPv2::PaymentMethodConfigurationDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID | [optional] |
| **object** | **String** |  | [optional][default to &#39;payment_method_configuration&#39;] |
| **active** | **Boolean** | 設定が有効かどうか。 | [optional] |
| **livemode** | **Boolean** | 本番環境かどうか | [optional] |
| **name** | **String** |  | [optional] |
| **paypay** | [**PaymentMethodConfigurationSettingResponse**](PaymentMethodConfigurationSettingResponse.md) | PayPayの設定 | [optional] |
| **card** | [**PaymentMethodConfigurationSettingResponse**](PaymentMethodConfigurationSettingResponse.md) | カードの設定 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodConfigurationDetailsResponse.new(
  id: null,
  object: null,
  active: null,
  livemode: null,
  name: null,
  paypay: null,
  card: null
)
```

