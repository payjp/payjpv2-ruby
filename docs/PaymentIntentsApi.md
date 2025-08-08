# PAYJPv2::PaymentIntentsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_payment_intent**](PaymentIntentsApi.md#cancel_payment_intent) | **POST** /v2/payment_intents/{payment_intent_id}/cancel | Cancel Payment Intent |
| [**capture_payment_intent**](PaymentIntentsApi.md#capture_payment_intent) | **POST** /v2/payment_intents/{payment_intent_id}/capture | Capture Payment Intent |
| [**confirm_payment_intent**](PaymentIntentsApi.md#confirm_payment_intent) | **POST** /v2/payment_intents/{payment_intent_id}/confirm | Confirm Payment Intent |
| [**create_payment_intent**](PaymentIntentsApi.md#create_payment_intent) | **POST** /v2/payment_intents | Create Payment Intent |
| [**get_all_payment_intent**](PaymentIntentsApi.md#get_all_payment_intent) | **GET** /v2/payment_intents | Get All Payment Intent |
| [**increment_authorization_payment_intent**](PaymentIntentsApi.md#increment_authorization_payment_intent) | **POST** /v2/payment_intents/{payment_intent_id}/increment_authorization | Increment Authorization Payment Intent |
| [**retrieve_payment_intent**](PaymentIntentsApi.md#retrieve_payment_intent) | **GET** /v2/payment_intents/{payment_intent_id} | Retrieve Payment Intent |
| [**update_payment_intent**](PaymentIntentsApi.md#update_payment_intent) | **POST** /v2/payment_intents/{payment_intent_id} | Update Payment Intent |


## cancel_payment_intent

> <PaymentIntentResponse> cancel_payment_intent(payment_intent_id, opts)

Cancel Payment Intent

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

api_instance = PAYJPv2::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 
opts = {
  payment_intent_cancel_request: PAYJPv2::PaymentIntentCancelRequest.new # PaymentIntentCancelRequest | 
}

begin
  # Cancel Payment Intent
  result = api_instance.cancel_payment_intent(payment_intent_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->cancel_payment_intent: #{e}"
end
```

#### Using the cancel_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> cancel_payment_intent_with_http_info(payment_intent_id, opts)

```ruby
begin
  # Cancel Payment Intent
  data, status_code, headers = api_instance.cancel_payment_intent_with_http_info(payment_intent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->cancel_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |
| **payment_intent_cancel_request** | [**PaymentIntentCancelRequest**](PaymentIntentCancelRequest.md) |  | [optional] |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## capture_payment_intent

> <PaymentIntentResponse> capture_payment_intent(payment_intent_id, opts)

Capture Payment Intent

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

api_instance = PAYJPv2::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 
opts = {
  payment_intent_capture_request: PAYJPv2::PaymentIntentCaptureRequest.new # PaymentIntentCaptureRequest | 
}

begin
  # Capture Payment Intent
  result = api_instance.capture_payment_intent(payment_intent_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->capture_payment_intent: #{e}"
end
```

#### Using the capture_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> capture_payment_intent_with_http_info(payment_intent_id, opts)

```ruby
begin
  # Capture Payment Intent
  data, status_code, headers = api_instance.capture_payment_intent_with_http_info(payment_intent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->capture_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |
| **payment_intent_capture_request** | [**PaymentIntentCaptureRequest**](PaymentIntentCaptureRequest.md) |  | [optional] |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## confirm_payment_intent

> <PaymentIntentResponse> confirm_payment_intent(payment_intent_id, opts)

Confirm Payment Intent

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

api_instance = PAYJPv2::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 
opts = {
  payment_intent_confirm_request: PAYJPv2::PaymentIntentConfirmRequest.new # PaymentIntentConfirmRequest | 
}

begin
  # Confirm Payment Intent
  result = api_instance.confirm_payment_intent(payment_intent_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_payment_intent: #{e}"
end
```

#### Using the confirm_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> confirm_payment_intent_with_http_info(payment_intent_id, opts)

```ruby
begin
  # Confirm Payment Intent
  data, status_code, headers = api_instance.confirm_payment_intent_with_http_info(payment_intent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |
| **payment_intent_confirm_request** | [**PaymentIntentConfirmRequest**](PaymentIntentConfirmRequest.md) |  | [optional] |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_payment_intent

> <PaymentIntentResponse> create_payment_intent(payment_intent_create_request)

Create Payment Intent

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

api_instance = PAYJPv2::PaymentIntentsApi.new
payment_intent_create_request = PAYJPv2::PaymentIntentCreateRequest.new({amount: 37}) # PaymentIntentCreateRequest | 

begin
  # Create Payment Intent
  result = api_instance.create_payment_intent(payment_intent_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->create_payment_intent: #{e}"
end
```

#### Using the create_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> create_payment_intent_with_http_info(payment_intent_create_request)

```ruby
begin
  # Create Payment Intent
  data, status_code, headers = api_instance.create_payment_intent_with_http_info(payment_intent_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->create_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_create_request** | [**PaymentIntentCreateRequest**](PaymentIntentCreateRequest.md) |  |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_payment_intent

> <PaymentIntentListResponse> get_all_payment_intent(opts)

Get All Payment Intent

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

api_instance = PAYJPv2::PaymentIntentsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  offset: 56 # Integer | データ取得を行う開始位置
}

begin
  # Get All Payment Intent
  result = api_instance.get_all_payment_intent(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_all_payment_intent: #{e}"
end
```

#### Using the get_all_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentListResponse>, Integer, Hash)> get_all_payment_intent_with_http_info(opts)

```ruby
begin
  # Get All Payment Intent
  data, status_code, headers = api_instance.get_all_payment_intent_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_all_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **offset** | **Integer** | データ取得を行う開始位置 | [optional][default to 0] |

### Return type

[**PaymentIntentListResponse**](PaymentIntentListResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## increment_authorization_payment_intent

> <PaymentIntentResponse> increment_authorization_payment_intent(payment_intent_id, payment_intent_increment_authorization_request)

Increment Authorization Payment Intent

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

api_instance = PAYJPv2::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 
payment_intent_increment_authorization_request = PAYJPv2::PaymentIntentIncrementAuthorizationRequest.new({amount: 37}) # PaymentIntentIncrementAuthorizationRequest | 

begin
  # Increment Authorization Payment Intent
  result = api_instance.increment_authorization_payment_intent(payment_intent_id, payment_intent_increment_authorization_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->increment_authorization_payment_intent: #{e}"
end
```

#### Using the increment_authorization_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> increment_authorization_payment_intent_with_http_info(payment_intent_id, payment_intent_increment_authorization_request)

```ruby
begin
  # Increment Authorization Payment Intent
  data, status_code, headers = api_instance.increment_authorization_payment_intent_with_http_info(payment_intent_id, payment_intent_increment_authorization_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->increment_authorization_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |
| **payment_intent_increment_authorization_request** | [**PaymentIntentIncrementAuthorizationRequest**](PaymentIntentIncrementAuthorizationRequest.md) |  |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## retrieve_payment_intent

> <PaymentIntentResponse> retrieve_payment_intent(payment_intent_id)

Retrieve Payment Intent

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

api_instance = PAYJPv2::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 

begin
  # Retrieve Payment Intent
  result = api_instance.retrieve_payment_intent(payment_intent_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->retrieve_payment_intent: #{e}"
end
```

#### Using the retrieve_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> retrieve_payment_intent_with_http_info(payment_intent_id)

```ruby
begin
  # Retrieve Payment Intent
  data, status_code, headers = api_instance.retrieve_payment_intent_with_http_info(payment_intent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->retrieve_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_payment_intent

> <PaymentIntentResponse> update_payment_intent(payment_intent_id, payment_intent_update_request)

Update Payment Intent

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

api_instance = PAYJPv2::PaymentIntentsApi.new
payment_intent_id = 'payment_intent_id_example' # String | 
payment_intent_update_request = PAYJPv2::PaymentIntentUpdateRequest.new # PaymentIntentUpdateRequest | 

begin
  # Update Payment Intent
  result = api_instance.update_payment_intent(payment_intent_id, payment_intent_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->update_payment_intent: #{e}"
end
```

#### Using the update_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> update_payment_intent_with_http_info(payment_intent_id, payment_intent_update_request)

```ruby
begin
  # Update Payment Intent
  data, status_code, headers = api_instance.update_payment_intent_with_http_info(payment_intent_id, payment_intent_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentIntentsApi->update_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_intent_id** | **String** |  |  |
| **payment_intent_update_request** | [**PaymentIntentUpdateRequest**](PaymentIntentUpdateRequest.md) |  |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

