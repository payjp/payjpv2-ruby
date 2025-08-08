# PAYJPv2::PaymentMethodResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;payment_method&#39;] |
| **id** | **String** | ID |  |
| **type** | **String** |  |  |
| **customer** | **String** |  | [optional] |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ | [optional] |
| **billing_details** | [**PaymentMethodBillingDetailsResponse**](PaymentMethodBillingDetailsResponse.md) | 請求先情報 |  |
| **card** | [**PaymentMethodCardDetailsResponse**](PaymentMethodCardDetailsResponse.md) | カード情報 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodResponse.new(
  object: null,
  id: null,
  type: null,
  customer: null,
  livemode: null,
  created_at: null,
  updated_at: null,
  metadata: null,
  billing_details: null,
  card: null
)
```

