# PAYJPv2::PaymentMethodOptionsCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_extended_authorization** | **String** | オーソリ期間の延長要求。  | 指定できる値 | |:---| | **if_available**: オーソリ期間の延長が可能な場合に延長要求を行います。 | | **never**: オーソリ期間の延長要求を行いません。 | | [optional] |
| **request_three_d_secure** | **String** | 3Dセキュア認証の要求方法。  | 指定できる値 | |:---| | **any**: 基本的に3Dセキュア認証を要求します。 | | **automatic**: 必要な場合にのみ3Dセキュア認証を要求します。 | &lt;!-- | **challenge**: 3Dセキュア認証を手動で要求します。 | --&gt;  | [optional] |
| **setup_future_usage** | **String** | セットアップ後の使用方法。  | 指定できる値 | |:---| | **off_session**: 顧客がその場にいない状態（例：定期課金や後日請求など）でも決済したい場合に使用します。事前の同意に基づいて自動的に課金されます。 | | **on_session**: 顧客が支払い操作中（例：Web画面で「支払う」ボタンを押す）でのみ決済できればいい場合に指定します。リアルタイムに同意が得られている状態です。 | | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodOptionsCardRequest.new(
  request_extended_authorization: null,
  request_three_d_secure: null,
  setup_future_usage: null
)
```

