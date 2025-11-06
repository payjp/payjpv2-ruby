# PAYJPv2::PaymentFlowDataRequestInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capture_method** | [**CaptureMethod**](CaptureMethod.md) | 支払いの確定方法を指定します。  | 指定できる値 | |:---| | **automatic**: (デフォルト) 顧客が支払いを承認すると自動的に確定します。 | | **manual**: 顧客が支払いを承認すると一旦確定を保留し、後で Capture API を使用して確定します。（すべての支払い方法がこれをサポートしているわけではありません）。 | | [optional] |
| **metadata** | [**Hash&lt;String, MetadataValue&gt;**](MetadataValue.md) | キーバリューの任意のデータを格納できます。&lt;a href&#x3D;\&quot;https://docs.pay.jp/v2/metadata\&quot;&gt;詳細はメタデータのドキュメントを参照してください。&lt;/a&gt; | [optional] |
| **setup_future_usage** | **String** | この PaymentFlow に設定されている支払い方法で今後決済を行うかの設定です。&lt;br&gt;&lt;br&gt; PaymentFlow に Customer を指定した場合、このパラメータを使って PaymentFlow を確定できます。 その後、顧客が必要な操作を完了すると、支払い方法を Customer に紐付けることが可能です。また、Customer を指定しない場合でも、取引が完了した後に支払い方法を Customer に紐付けることはできます。 | [optional] |

## Example

```ruby
require 'payjpv2'

instance = PAYJPv2::PaymentFlowDataRequestInput.new(
  capture_method: null,
  metadata: null,
  setup_future_usage: null
)
```

