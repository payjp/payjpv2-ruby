# PAYJPv2::PaymentMethodCreateRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'payjpv2'

PAYJPv2::PaymentMethodCreateRequest.openapi_one_of
# =>
# [
#   :'PaymentMethodApplePayCreateRequest',
#   :'PaymentMethodCardCreateRequest',
#   :'PaymentMethodPayPayCreateRequest'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'payjpv2'

PAYJPv2::PaymentMethodCreateRequest.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'payjpv2'

PAYJPv2::PaymentMethodCreateRequest.openapi_discriminator_mapping
# =>
# {
#   :'apple_pay' => :'PaymentMethodApplePayCreateRequest',
#   :'card' => :'PaymentMethodCardCreateRequest',
#   :'paypay' => :'PaymentMethodPayPayCreateRequest'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'payjpv2'

PAYJPv2::PaymentMethodCreateRequest.build(data)
# => #<PaymentMethodApplePayCreateRequest:0x00007fdd4aab02a0>

PAYJPv2::PaymentMethodCreateRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentMethodApplePayCreateRequest`
- `PaymentMethodCardCreateRequest`
- `PaymentMethodPayPayCreateRequest`
- `nil` (if no type matches)

