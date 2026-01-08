# PAYJPv2::PaymentMethodCardResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;payment_method&#39;] |
| **id** | **String** | ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **type** | **String** |  |  |
| **customer_id** | **String** |  |  |
| **detached_at** | **Time** |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |
| **billing_details** | [**PaymentMethodBillingDetailsResponse**](PaymentMethodBillingDetailsResponse.md) | 請求先情報 |  |
| **card** | [**PaymentMethodCardDetailsResponse**](PaymentMethodCardDetailsResponse.md) | カード情報 |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentMethodCardResponse.new(
  object: null,
  id: null,
  livemode: null,
  type: null,
  customer_id: null,
  detached_at: null,
  metadata: null,
  created_at: null,
  updated_at: null,
  billing_details: null,
  card: null
)
```

