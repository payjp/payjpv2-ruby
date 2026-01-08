# PAYJPv2::CustomerCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | 顧客 ID。100桁までの一意な文字列を指定できます。使える文字は半角英数字、ハイフン(-)、アンダースコア(_)です。未指定時は &#x60;cus_&#x60; で始まる一意な文字列が自動生成されます。 | [optional] |
| **payment_method_id** | **String** | 顧客に紐づける支払い方法 ID。同時にデフォルトの支払い方法として登録されます。 | [optional] |
| **email** | **String** | 顧客のメールアドレス。メールアドレスの形式が正しいかどうかは検証されます。 | [optional] |
| **description** | **String** | 顧客オブジェクトに付加できる任意の文字列です。管理画面で顧客と一緒に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。20件まで登録可能で、空文字列を指定するとそのキーを削除できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/developers/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CustomerCreateRequest.new(
  id: null,
  payment_method_id: null,
  email: null,
  description: null,
  metadata: null
)
```

