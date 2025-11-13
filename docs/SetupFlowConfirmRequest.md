# PAYJPv2::SetupFlowConfirmRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_options** | **Hash&lt;String, Object&gt;** | この SetupFlow の支払い方法の個別設定。 | [optional] |
| **return_url** | **String** | 顧客が支払いを完了後、あるいはキャンセルした後にリダイレクトされるURL。アプリにリダイレクトしたい場合は URI Scheme を指定できます。&#x60;confirm&#x3D;true&#x60; の場合のみ指定できます。 | [optional] |
| **use_payjp_sdk** | **Boolean** | PAY.JP SDK を使用するかどうか | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupFlowConfirmRequest.new(
  payment_method_options: null,
  return_url: null,
  use_payjp_sdk: null
)
```

