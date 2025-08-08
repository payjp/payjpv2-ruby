# PAYJPv2::PaymentMethodsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_method**](PaymentMethodsApi.md#create_payment_method) | **POST** /v2/payment_methods | Create Payment Method |
| [**get_all_payment_methods**](PaymentMethodsApi.md#get_all_payment_methods) | **GET** /v2/payment_methods | Get All Payment Methods |
| [**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /v2/payment_methods/{payment_method_id} | Get Payment Method |
| [**update_payment_method**](PaymentMethodsApi.md#update_payment_method) | **POST** /v2/payment_methods/{payment_method_id} | Update Payment Method |


## create_payment_method

> <PaymentMethodResponse> create_payment_method(payment_method_create_request)

Create Payment Method

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

api_instance = PAYJPv2::PaymentMethodsApi.new
payment_method_create_request = PAYJPv2::PaymentMethodCardCreateRequest.new({billing_details: PAYJPv2::PaymentMethodBillingDetailsRequest.new, type: 'card', card: PAYJPv2::PaymentMethodCreateCardDetailsRequest.new({number: 'number_example', exp_month: 37, exp_year: 37, cvc: 'cvc_example'})}) # PaymentMethodCreateRequest | 

begin
  # Create Payment Method
  result = api_instance.create_payment_method(payment_method_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method: #{e}"
end
```

#### Using the create_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodResponse>, Integer, Hash)> create_payment_method_with_http_info(payment_method_create_request)

```ruby
begin
  # Create Payment Method
  data, status_code, headers = api_instance.create_payment_method_with_http_info(payment_method_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_create_request** | [**PaymentMethodCreateRequest**](PaymentMethodCreateRequest.md) |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_payment_methods

> <PaymentMethodListResponse> get_all_payment_methods(opts)

Get All Payment Methods

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

api_instance = PAYJPv2::PaymentMethodsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  offset: 56 # Integer | データ取得を行う開始位置
}

begin
  # Get All Payment Methods
  result = api_instance.get_all_payment_methods(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_all_payment_methods: #{e}"
end
```

#### Using the get_all_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodListResponse>, Integer, Hash)> get_all_payment_methods_with_http_info(opts)

```ruby
begin
  # Get All Payment Methods
  data, status_code, headers = api_instance.get_all_payment_methods_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_all_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **offset** | **Integer** | データ取得を行う開始位置 | [optional][default to 0] |

### Return type

[**PaymentMethodListResponse**](PaymentMethodListResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_method

> <PaymentMethodResponse> get_payment_method(payment_method_id)

Get Payment Method

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

api_instance = PAYJPv2::PaymentMethodsApi.new
payment_method_id = 'payment_method_id_example' # String | 

begin
  # Get Payment Method
  result = api_instance.get_payment_method(payment_method_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodResponse>, Integer, Hash)> get_payment_method_with_http_info(payment_method_id)

```ruby
begin
  # Get Payment Method
  data, status_code, headers = api_instance.get_payment_method_with_http_info(payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_payment_method

> <PaymentMethodResponse> update_payment_method(payment_method_id, payment_method_card_update_request)

Update Payment Method

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

api_instance = PAYJPv2::PaymentMethodsApi.new
payment_method_id = 'payment_method_id_example' # String | 
payment_method_card_update_request = PAYJPv2::PaymentMethodCardUpdateRequest.new({type: 'card', card: PAYJPv2::PaymentMethodUpdateCardDetailsRequest.new({exp_month: 37, exp_year: 37})}) # PaymentMethodCardUpdateRequest | 

begin
  # Update Payment Method
  result = api_instance.update_payment_method(payment_method_id, payment_method_card_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method: #{e}"
end
```

#### Using the update_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodResponse>, Integer, Hash)> update_payment_method_with_http_info(payment_method_id, payment_method_card_update_request)

```ruby
begin
  # Update Payment Method
  data, status_code, headers = api_instance.update_payment_method_with_http_info(payment_method_id, payment_method_card_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  |  |
| **payment_method_card_update_request** | [**PaymentMethodCardUpdateRequest**](PaymentMethodCardUpdateRequest.md) |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

