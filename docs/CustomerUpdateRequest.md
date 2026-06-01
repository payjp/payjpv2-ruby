# PAYJPv2::CustomerUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_payment_method_id** | **String** | 支払いにデフォルトで使用される支払い方法 ID | [optional] |
| **email** | **String** | 顧客のメールアドレス。メールアドレスの形式が正しいかどうかは検証されます。 | [optional] |
| **description** | **String** | 顧客オブジェクトに付加できる任意の文字列です。管理画面で顧客と一緒に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。20件まで登録可能で、空文字列を指定するとそのキーを削除できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/guide/developers/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::CustomerUpdateRequest.new(
  default_payment_method_id: null,
  email: null,
  description: null,
  metadata: null
)
```

