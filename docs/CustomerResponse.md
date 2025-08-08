# PAYJPv2::CustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 顧客ID | [optional] |
| **object** | **String** |  | [optional][default to &#39;customer&#39;] |
| **livemode** | **Boolean** | 本番環境かどうか |  |
| **email** | **String** |  |  |
| **description** | **String** |  |  |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | メタデータ | [optional] |
| **created_at** | **Time** | 作成日時 (UTC, ISO 8601 形式) |  |
| **updated_at** | **Time** | 更新日時 (UTC, ISO 8601 形式) |  |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CustomerResponse.new(
  id: null,
  object: null,
  livemode: null,
  email: null,
  description: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

