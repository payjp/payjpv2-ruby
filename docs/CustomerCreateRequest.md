# PAYJPv2::CustomerCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | 顧客のメールアドレス。メールアドレスの形式が正しいかどうかは検証されます。 | [optional] |
| **description** | **String** | 顧客オブジェクトに付加できる任意の文字列です。これは、ダッシュボードで顧客と一緒に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **id** | **String** | 顧客ID。100桁までの一意な文字列を指定できます。使える文字は半角英数字、ハイフン(-)、アンダースコア(_)です。未指定時は &#x60;cus_&#x60; で始まる32桁までの一意な文字列が自動生成されます。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CustomerCreateRequest.new(
  email: null,
  description: null,
  metadata: null,
  id: null
)
```

