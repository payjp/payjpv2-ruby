# PAYJPv2::PaymentIntentCaptureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_to_capture** | **Integer** | PaymentIntentから確定させる金額は、元の金額以下で指定します。指定されていない場合は、全額（&#x60;amount_capturable&#x60;）がデフォルトになります。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentIntentCaptureRequest.new(
  amount_to_capture: null
)
```

