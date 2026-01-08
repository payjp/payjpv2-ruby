# PAYJPv2::CustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional][default to &#39;customer&#39;] |
| **id** | **String** | 顧客 ID |  |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **email** | **String** |  |  |
| **description** | **String** |  |  |
| **default_payment_method_id** | **String** |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ |  |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CustomerResponse.new(
  object: null,
  id: null,
  livemode: null,
  email: null,
  description: null,
  default_payment_method_id: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

