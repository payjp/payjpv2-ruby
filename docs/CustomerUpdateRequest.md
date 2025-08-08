# PAYJPv2::CustomerUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | 顧客のメールアドレス。メールアドレスの形式が正しいかどうかは検証されます。 | [optional] |
| **description** | **String** | 顧客オブジェクトに付加できる任意の文字列です。これは、ダッシュボードで顧客と一緒に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CustomerUpdateRequest.new(
  email: null,
  description: null,
  metadata: null
)
```

