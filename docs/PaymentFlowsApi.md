# PAYJPv2::PaymentFlowsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_payment_flow**](PaymentFlowsApi.md#cancel_payment_flow) | **POST** /v2/payment_flows/{payment_flow_id}/cancel | Cancel Payment Flow |
| [**capture_payment_flow**](PaymentFlowsApi.md#capture_payment_flow) | **POST** /v2/payment_flows/{payment_flow_id}/capture | Capture Payment Flow |
| [**confirm_payment_flow**](PaymentFlowsApi.md#confirm_payment_flow) | **POST** /v2/payment_flows/{payment_flow_id}/confirm | Confirm Payment Flow |
| [**create_payment_flow**](PaymentFlowsApi.md#create_payment_flow) | **POST** /v2/payment_flows | Create Payment Flow |
| [**get_all_payment_flow**](PaymentFlowsApi.md#get_all_payment_flow) | **GET** /v2/payment_flows | Get All Payment Flow |
| [**retrieve_payment_flow**](PaymentFlowsApi.md#retrieve_payment_flow) | **GET** /v2/payment_flows/{payment_flow_id} | Retrieve Payment Flow |
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

#### Using the cancel_payment_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentFlowResponse>, Integer, Hash)> cancel_payment_flow_with_http_info(payment_flow_id, opts)

```ruby
begin
  # Cancel Payment Flow
  data, status_code, headers = api_instance.cancel_payment_flow_with_http_info(payment_flow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->cancel_payment_flow_with_http_info: #{e}"
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

#### Using the capture_payment_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentFlowResponse>, Integer, Hash)> capture_payment_flow_with_http_info(payment_flow_id, opts)

```ruby
begin
  # Capture Payment Flow
  data, status_code, headers = api_instance.capture_payment_flow_with_http_info(payment_flow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->capture_payment_flow_with_http_info: #{e}"
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

#### Using the confirm_payment_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentFlowResponse>, Integer, Hash)> confirm_payment_flow_with_http_info(payment_flow_id, opts)

```ruby
begin
  # Confirm Payment Flow
  data, status_code, headers = api_instance.confirm_payment_flow_with_http_info(payment_flow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->confirm_payment_flow_with_http_info: #{e}"
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
payment_flow_create_request = PAYJPv2::PaymentFlowCreateRequest.new({amount: 37}) # PaymentFlowCreateRequest | 

begin
  # Create Payment Flow
  result = api_instance.create_payment_flow(payment_flow_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->create_payment_flow: #{e}"
end
```

#### Using the create_payment_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentFlowResponse>, Integer, Hash)> create_payment_flow_with_http_info(payment_flow_create_request)

```ruby
begin
  # Create Payment Flow
  data, status_code, headers = api_instance.create_payment_flow_with_http_info(payment_flow_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->create_payment_flow_with_http_info: #{e}"
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


## get_all_payment_flow

> <PaymentFlowListResponse> get_all_payment_flow(opts)

Get All Payment Flow

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
  # Get All Payment Flow
  result = api_instance.get_all_payment_flow(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->get_all_payment_flow: #{e}"
end
```

#### Using the get_all_payment_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentFlowListResponse>, Integer, Hash)> get_all_payment_flow_with_http_info(opts)

```ruby
begin
  # Get All Payment Flow
  data, status_code, headers = api_instance.get_all_payment_flow_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->get_all_payment_flow_with_http_info: #{e}"
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


## retrieve_payment_flow

> <PaymentFlowResponse> retrieve_payment_flow(payment_flow_id)

Retrieve Payment Flow

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
  # Retrieve Payment Flow
  result = api_instance.retrieve_payment_flow(payment_flow_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->retrieve_payment_flow: #{e}"
end
```

#### Using the retrieve_payment_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentFlowResponse>, Integer, Hash)> retrieve_payment_flow_with_http_info(payment_flow_id)

```ruby
begin
  # Retrieve Payment Flow
  data, status_code, headers = api_instance.retrieve_payment_flow_with_http_info(payment_flow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->retrieve_payment_flow_with_http_info: #{e}"
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

#### Using the update_payment_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentFlowResponse>, Integer, Hash)> update_payment_flow_with_http_info(payment_flow_id, payment_flow_update_request)

```ruby
begin
  # Update Payment Flow
  data, status_code, headers = api_instance.update_payment_flow_with_http_info(payment_flow_id, payment_flow_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentFlowsApi->update_payment_flow_with_http_info: #{e}"
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

