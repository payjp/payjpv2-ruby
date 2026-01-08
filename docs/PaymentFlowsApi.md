# PAYJPv2::PaymentFlowsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_payment_flow**](PaymentFlowsApi.md#cancel_payment_flow) | **POST** /v2/payment_flows/{payment_flow_id}/cancel | Cancel Payment Flow |
| [**capture_payment_flow**](PaymentFlowsApi.md#capture_payment_flow) | **POST** /v2/payment_flows/{payment_flow_id}/capture | Capture Payment Flow |
| [**confirm_payment_flow**](PaymentFlowsApi.md#confirm_payment_flow) | **POST** /v2/payment_flows/{payment_flow_id}/confirm | Confirm Payment Flow |
| [**create_payment_flow**](PaymentFlowsApi.md#create_payment_flow) | **POST** /v2/payment_flows | Create Payment Flow |
| [**get_all_payment_flows**](PaymentFlowsApi.md#get_all_payment_flows) | **GET** /v2/payment_flows | Get All Payment Flows |
| [**get_payment_flow**](PaymentFlowsApi.md#get_payment_flow) | **GET** /v2/payment_flows/{payment_flow_id} | Get Payment Flow |
| [**get_payment_flow_refunds**](PaymentFlowsApi.md#get_payment_flow_refunds) | **GET** /v2/payment_flows/{payment_flow_id}/refunds | Get Payment Flow Refunds |
| [**update_payment_flow**](PaymentFlowsApi.md#update_payment_flow) | **POST** /v2/payment_flows/{payment_flow_id} | Update Payment Flow |


## cancel_payment_flow

> <PaymentFlowResponse> cancel_payment_flow(payment_flow_id, opts)

Cancel Payment Flow

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

api_instance = PAYJPv2::PaymentFlowsApi.new
payment_flow_id = 'payment_flow_id_example' # String | 
opts = {
  payment_flow_cancel_request: PAYJPv2::PaymentFlowCancelRequest.new # PaymentFlowCancelRequest | 
}

begin
  # Cancel Payment Flow
  result = api_instance.cancel_payment_flow(payment_flow_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->cancel_payment_flow: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Cancel Payment Flow
  data, status_code, headers = api_instance.cancel_payment_flow(payment_flow_id, opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->cancel_payment_flow: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_flow_id** | **String** |  |  |
| **payment_flow_cancel_request** | [**PaymentFlowCancelRequest**](PaymentFlowCancelRequest.md) |  | [optional] |

### Return type

[**PaymentFlowResponse**](PaymentFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## capture_payment_flow

> <PaymentFlowResponse> capture_payment_flow(payment_flow_id, opts)

Capture Payment Flow

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

api_instance = PAYJPv2::PaymentFlowsApi.new
payment_flow_id = 'payment_flow_id_example' # String | 
opts = {
  payment_flow_capture_request: PAYJPv2::PaymentFlowCaptureRequest.new # PaymentFlowCaptureRequest | 
}

begin
  # Capture Payment Flow
  result = api_instance.capture_payment_flow(payment_flow_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->capture_payment_flow: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Capture Payment Flow
  data, status_code, headers = api_instance.capture_payment_flow(payment_flow_id, opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->capture_payment_flow: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_flow_id** | **String** |  |  |
| **payment_flow_capture_request** | [**PaymentFlowCaptureRequest**](PaymentFlowCaptureRequest.md) |  | [optional] |

### Return type

[**PaymentFlowResponse**](PaymentFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## confirm_payment_flow

> <PaymentFlowResponse> confirm_payment_flow(payment_flow_id, opts)

Confirm Payment Flow

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

api_instance = PAYJPv2::PaymentFlowsApi.new
payment_flow_id = 'payment_flow_id_example' # String | 
opts = {
  payment_flow_confirm_request: PAYJPv2::PaymentFlowConfirmRequest.new # PaymentFlowConfirmRequest | 
}

begin
  # Confirm Payment Flow
  result = api_instance.confirm_payment_flow(payment_flow_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->confirm_payment_flow: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Confirm Payment Flow
  data, status_code, headers = api_instance.confirm_payment_flow(payment_flow_id, opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->confirm_payment_flow: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_flow_id** | **String** |  |  |
| **payment_flow_confirm_request** | [**PaymentFlowConfirmRequest**](PaymentFlowConfirmRequest.md) |  | [optional] |

### Return type

[**PaymentFlowResponse**](PaymentFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_payment_flow

> <PaymentFlowResponse> create_payment_flow(payment_flow_create_request)

Create Payment Flow

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

api_instance = PAYJPv2::PaymentFlowsApi.new
payment_flow_create_request = PAYJPv2::PaymentFlowCreateRequest.new({amount: 37, currency: PAYJPv2::Currency::JPY}) # PaymentFlowCreateRequest | 

begin
  # Create Payment Flow
  result = api_instance.create_payment_flow(payment_flow_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->create_payment_flow: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Create Payment Flow
  data, status_code, headers = api_instance.create_payment_flow(payment_flow_create_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->create_payment_flow: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_flow_create_request** | [**PaymentFlowCreateRequest**](PaymentFlowCreateRequest.md) |  |  |

### Return type

[**PaymentFlowResponse**](PaymentFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_payment_flows

> <PaymentFlowListResponse> get_all_payment_flows(opts)

Get All Payment Flows

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

api_instance = PAYJPv2::PaymentFlowsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example', # String | このIDより前のデータを取得
  customer_id: 'customer_id_example' # String | 指定した顧客のデータのみを取得
}

begin
  # Get All Payment Flows
  result = api_instance.get_all_payment_flows(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->get_all_payment_flows: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Payment Flows
  data, status_code, headers = api_instance.get_all_payment_flows(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->get_all_payment_flows: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |
| **customer_id** | **String** | 指定した顧客のデータのみを取得 | [optional] |

### Return type

[**PaymentFlowListResponse**](PaymentFlowListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_flow

> <PaymentFlowResponse> get_payment_flow(payment_flow_id)

Get Payment Flow

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

api_instance = PAYJPv2::PaymentFlowsApi.new
payment_flow_id = 'payment_flow_id_example' # String | 

begin
  # Get Payment Flow
  result = api_instance.get_payment_flow(payment_flow_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->get_payment_flow: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Payment Flow
  data, status_code, headers = api_instance.get_payment_flow(payment_flow_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->get_payment_flow: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_flow_id** | **String** |  |  |

### Return type

[**PaymentFlowResponse**](PaymentFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_flow_refunds

> <PaymentRefundListResponse> get_payment_flow_refunds(payment_flow_id, opts)

Get Payment Flow Refunds

Payment Flowに紐づくRefundsをリスト取得する

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

api_instance = PAYJPv2::PaymentFlowsApi.new
payment_flow_id = 'payment_flow_id_example' # String | 
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get Payment Flow Refunds
  result = api_instance.get_payment_flow_refunds(payment_flow_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->get_payment_flow_refunds: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Payment Flow Refunds
  data, status_code, headers = api_instance.get_payment_flow_refunds(payment_flow_id, opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentRefundListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->get_payment_flow_refunds: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_flow_id** | **String** |  |  |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**PaymentRefundListResponse**](PaymentRefundListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_payment_flow

> <PaymentFlowResponse> update_payment_flow(payment_flow_id, payment_flow_update_request)

Update Payment Flow

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

api_instance = PAYJPv2::PaymentFlowsApi.new
payment_flow_id = 'payment_flow_id_example' # String | 
payment_flow_update_request = PAYJPv2::PaymentFlowUpdateRequest.new # PaymentFlowUpdateRequest | 

begin
  # Update Payment Flow
  result = api_instance.update_payment_flow(payment_flow_id, payment_flow_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->update_payment_flow: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Update Payment Flow
  data, status_code, headers = api_instance.update_payment_flow(payment_flow_id, payment_flow_update_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->update_payment_flow: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_flow_id** | **String** |  |  |
| **payment_flow_update_request** | [**PaymentFlowUpdateRequest**](PaymentFlowUpdateRequest.md) |  |  |

### Return type

[**PaymentFlowResponse**](PaymentFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

