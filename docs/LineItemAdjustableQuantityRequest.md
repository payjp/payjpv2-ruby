# PAYJPv2::LineItemAdjustableQuantityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | 数量が任意の 0 以上の整数に調整可能であれば、&#x60;true&#x60; を指定します。 | [optional] |
| **maximum** | **Integer** | 顧客が Checkout Session で購入できる最大数量です。デフォルトではこの値は 99 です。999,999 までの値を指定できます。 | [optional] |
| **minimum** | **Integer** | 顧客が Checkout Session で購入できる最小数量です。この値はデフォルトで 0 です。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::LineItemAdjustableQuantityRequest.new(
  enabled: null,
  maximum: null,
  minimum: null
)
```

