# PAYJPv2::PaymentFlowCaptureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_to_capture** | **Integer** | PaymentFlowから確定させる金額は、元の金額以下で指定します。指定されていない場合は、全額（&#x60;amount_capturable&#x60;）がデフォルトになります。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowCaptureRequest.new(
  amount_to_capture: null
)
```

