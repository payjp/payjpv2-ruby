# PAYJPv2::SetupIntentCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirm** | **Boolean** | SetupIntent をすぐに確定しようとする場合に &#x60;true&#x60; を設定します。このパラメーターのデフォルト値は &#x60;false&#x60; です。カードが登録済みの支払い方法である場合は、追加の認証が必要な場合に備えて &#x60;return_url&#x60; を指定できます。 | [optional][default to false] |
| **customer** | **String** | この SetupIntent が属する顧客の ID。SetupIntent に PaymentMethod が設定されている場合、SetupIntent の設定が成功するとその PaymentMethod は顧客に紐付きます。別の顧客に紐付いている PaymentMethod をこの SetupIntent で使用することはできません。 | [optional] |
| **description** | **String** | 説明。顧客に表示されます。 | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **payment_method** | **String** | この SetupIntent に紐付ける決済方法のID | [optional] |
| **payment_method_data** | [**PaymentMethodCreateRequest**](PaymentMethodCreateRequest.md) | 支払い方法データ | [optional] |
| **payment_method_options** | **Object** | この SetupIntent の支払い方法の個別設定。 | [optional] |
| **payment_method_types** | [**Array&lt;PaymentMethodTypes&gt;**](PaymentMethodTypes.md) |  | [optional] |
| **return_url** | **String** | 顧客が支払いを完了後、あるいはキャンセルした後にリダイレクトされるURL。アプリにリダイレクトしたい場合は URI Scheme を指定できます。&#x60;confirm&#x3D;true&#x60; の場合のみ指定できます。 | [optional] |
| **usage** | [**Usage**](Usage.md) | 支払い方法が今後どのように使用されるかを指定します。指定されていない場合、この値はデフォルトで &#x60;off_session&#x60; になります。  | 指定できる値 | |:---| | **off_session**: 定期課金など、顧客がカートなどの決済フローにいるかどうか不明な場合は &#x60;off_session&#x60; を使用してください。 | | **on_session**: 顧客がカートなどの決済フローにいる場合にのみ支払い方法を利用する場合は &#x60;on_session&#x60; を使用してください。 | | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::SetupIntentCreateRequest.new(
  confirm: null,
  customer: null,
  description: null,
  metadata: null,
  payment_method: null,
  payment_method_data: null,
  payment_method_options: null,
  payment_method_types: null,
  return_url: null,
  usage: null
)
```

