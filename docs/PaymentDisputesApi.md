# PAYJPv2::PaymentDisputesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_payment_disputes**](PaymentDisputesApi.md#get_all_payment_disputes) | **GET** /v2/payment_disputes | Get All Payment Disputes |
| [**get_payment_dispute**](PaymentDisputesApi.md#get_payment_dispute) | **GET** /v2/payment_disputes/{payment_dispute_id} | Get Payment Dispute |


## get_all_payment_disputes

> <PaymentDisputeListResponse> get_all_payment_disputes(opts)

Get All Payment Disputes

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PAYJPv2::PaymentDisputesApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example', # String | このIDより前のデータを取得
  payment_flow_id: 'payment_flow_id_example', # String | 取得する payment_dispute に紐づく payment_flow の ID
  status: [PAYJPv2::PaymentDisputeStatus::PRE_WARNING_NEEDS_RESPONSE] # Array<PaymentDisputeStatus> | 取得する payment_dispute のステータス。複数指定可能
}

begin
  # Get All Payment Disputes
  result = api_instance.get_all_payment_disputes(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentDisputesApi->get_all_payment_disputes: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Payment Disputes
  data, status_code, headers = api_instance.get_all_payment_disputes(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentDisputeListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentDisputesApi->get_all_payment_disputes: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |
| **payment_flow_id** | **String** | 取得する payment_dispute に紐づく payment_flow の ID | [optional] |
| **status** | [**Array&lt;PaymentDisputeStatus&gt;**](PaymentDisputeStatus.md) | 取得する payment_dispute のステータス。複数指定可能 | [optional] |

### Return type

[**PaymentDisputeListResponse**](PaymentDisputeListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_dispute

> <PaymentDisputeResponse> get_payment_dispute(payment_dispute_id)

Get Payment Dispute

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PAYJPv2::PaymentDisputesApi.new
payment_dispute_id = 'payment_dispute_id_example' # String | 

begin
  # Get Payment Dispute
  result = api_instance.get_payment_dispute(payment_dispute_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentDisputesApi->get_payment_dispute: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Payment Dispute
  data, status_code, headers = api_instance.get_payment_dispute(payment_dispute_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentDisputeResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentDisputesApi->get_payment_dispute: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_dispute_id** | **String** |  |  |

### Return type

[**PaymentDisputeResponse**](PaymentDisputeResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

