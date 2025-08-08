# PAYJPv2::RefundsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_refund**](RefundsApi.md#cancel_refund) | **POST** /v2/refunds/{refund_id}/cancel | Cancel Refund |
| [**create_refund**](RefundsApi.md#create_refund) | **POST** /v2/refunds | Create Refund |
| [**get_all_refunds**](RefundsApi.md#get_all_refunds) | **GET** /v2/refunds | Get All Refunds |
| [**retrieve_refund**](RefundsApi.md#retrieve_refund) | **GET** /v2/refunds/{refund_id} | Retrieve Refund |
| [**update_refund**](RefundsApi.md#update_refund) | **POST** /v2/refunds/{refund_id} | Update Refund |


## cancel_refund

> <RefundResponse> cancel_refund(refund_id)

Cancel Refund

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PAYJPv2::RefundsApi.new
refund_id = 'refund_id_example' # String | 

begin
  # Cancel Refund
  result = api_instance.cancel_refund(refund_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->cancel_refund: #{e}"
end
```

#### Using the cancel_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> cancel_refund_with_http_info(refund_id)

```ruby
begin
  # Cancel Refund
  data, status_code, headers = api_instance.cancel_refund_with_http_info(refund_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->cancel_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refund_id** | **String** |  |  |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## create_refund

> <RefundResponse> create_refund(refund_create_request)

Create Refund

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PAYJPv2::RefundsApi.new
refund_create_request = PAYJPv2::RefundCreateRequest.new({payment_intent: 'payment_intent_example'}) # RefundCreateRequest | 

begin
  # Create Refund
  result = api_instance.create_refund(refund_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->create_refund: #{e}"
end
```

#### Using the create_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> create_refund_with_http_info(refund_create_request)

```ruby
begin
  # Create Refund
  data, status_code, headers = api_instance.create_refund_with_http_info(refund_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->create_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refund_create_request** | [**RefundCreateRequest**](RefundCreateRequest.md) |  |  |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_refunds

> <RefundListResponse> get_all_refunds(opts)

Get All Refunds

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PAYJPv2::RefundsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  offset: 56 # Integer | データ取得を行う開始位置
}

begin
  # Get All Refunds
  result = api_instance.get_all_refunds(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->get_all_refunds: #{e}"
end
```

#### Using the get_all_refunds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundListResponse>, Integer, Hash)> get_all_refunds_with_http_info(opts)

```ruby
begin
  # Get All Refunds
  data, status_code, headers = api_instance.get_all_refunds_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->get_all_refunds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **offset** | **Integer** | データ取得を行う開始位置 | [optional][default to 0] |

### Return type

[**RefundListResponse**](RefundListResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## retrieve_refund

> <RefundResponse> retrieve_refund(refund_id)

Retrieve Refund

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PAYJPv2::RefundsApi.new
refund_id = 'refund_id_example' # String | 

begin
  # Retrieve Refund
  result = api_instance.retrieve_refund(refund_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->retrieve_refund: #{e}"
end
```

#### Using the retrieve_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> retrieve_refund_with_http_info(refund_id)

```ruby
begin
  # Retrieve Refund
  data, status_code, headers = api_instance.retrieve_refund_with_http_info(refund_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->retrieve_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refund_id** | **String** |  |  |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_refund

> <RefundResponse> update_refund(refund_id, payment_refund_update_request)

Update Refund

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PAYJPv2::RefundsApi.new
refund_id = 'refund_id_example' # String | 
payment_refund_update_request = PAYJPv2::PaymentRefundUpdateRequest.new # PaymentRefundUpdateRequest | 

begin
  # Update Refund
  result = api_instance.update_refund(refund_id, payment_refund_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->update_refund: #{e}"
end
```

#### Using the update_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundResponse>, Integer, Hash)> update_refund_with_http_info(refund_id, payment_refund_update_request)

```ruby
begin
  # Update Refund
  data, status_code, headers = api_instance.update_refund_with_http_info(refund_id, payment_refund_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling RefundsApi->update_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refund_id** | **String** |  |  |
| **payment_refund_update_request** | [**PaymentRefundUpdateRequest**](PaymentRefundUpdateRequest.md) |  |  |

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

