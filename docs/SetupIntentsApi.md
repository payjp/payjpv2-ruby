# PAYJPv2::SetupIntentsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_setup_intent**](SetupIntentsApi.md#cancel_setup_intent) | **POST** /v2/setup_intents/{setup_intent_id}/cancel | Cancel Setup Intent |
| [**confirm_setup_intent**](SetupIntentsApi.md#confirm_setup_intent) | **POST** /v2/setup_intents/{setup_intent_id}/confirm | Confirm Setup Intent |
| [**create_setup_intent**](SetupIntentsApi.md#create_setup_intent) | **POST** /v2/setup_intents | Create Setup Intent |
| [**get_all_setup_intent**](SetupIntentsApi.md#get_all_setup_intent) | **GET** /v2/setup_intents | Get All Setup Intent |
| [**retrieve_setup_intent**](SetupIntentsApi.md#retrieve_setup_intent) | **GET** /v2/setup_intents/{setup_intent_id} | Retrieve Setup Intent |
| [**update_setup_intent**](SetupIntentsApi.md#update_setup_intent) | **POST** /v2/setup_intents/{setup_intent_id} | Update Setup Intent |


## cancel_setup_intent

> <SetupIntentResponse> cancel_setup_intent(setup_intent_id, opts)

Cancel Setup Intent

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

api_instance = PAYJPv2::SetupIntentsApi.new
setup_intent_id = 'setup_intent_id_example' # String | 
opts = {
  setup_intent_cancel_request: PAYJPv2::SetupIntentCancelRequest.new # SetupIntentCancelRequest | 
}

begin
  # Cancel Setup Intent
  result = api_instance.cancel_setup_intent(setup_intent_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->cancel_setup_intent: #{e}"
end
```

#### Using the cancel_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentResponse>, Integer, Hash)> cancel_setup_intent_with_http_info(setup_intent_id, opts)

```ruby
begin
  # Cancel Setup Intent
  data, status_code, headers = api_instance.cancel_setup_intent_with_http_info(setup_intent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->cancel_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_intent_id** | **String** |  |  |
| **setup_intent_cancel_request** | [**SetupIntentCancelRequest**](SetupIntentCancelRequest.md) |  | [optional] |

### Return type

[**SetupIntentResponse**](SetupIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## confirm_setup_intent

> <SetupIntentResponse> confirm_setup_intent(setup_intent_id, opts)

Confirm Setup Intent

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

api_instance = PAYJPv2::SetupIntentsApi.new
setup_intent_id = 'setup_intent_id_example' # String | 
opts = {
  setup_intent_confirm_request: PAYJPv2::SetupIntentConfirmRequest.new # SetupIntentConfirmRequest | 
}

begin
  # Confirm Setup Intent
  result = api_instance.confirm_setup_intent(setup_intent_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->confirm_setup_intent: #{e}"
end
```

#### Using the confirm_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentResponse>, Integer, Hash)> confirm_setup_intent_with_http_info(setup_intent_id, opts)

```ruby
begin
  # Confirm Setup Intent
  data, status_code, headers = api_instance.confirm_setup_intent_with_http_info(setup_intent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->confirm_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_intent_id** | **String** |  |  |
| **setup_intent_confirm_request** | [**SetupIntentConfirmRequest**](SetupIntentConfirmRequest.md) |  | [optional] |

### Return type

[**SetupIntentResponse**](SetupIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_setup_intent

> <SetupIntentResponse> create_setup_intent(opts)

Create Setup Intent

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

api_instance = PAYJPv2::SetupIntentsApi.new
opts = {
  setup_intent_create_request: PAYJPv2::SetupIntentCreateRequest.new # SetupIntentCreateRequest | 
}

begin
  # Create Setup Intent
  result = api_instance.create_setup_intent(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->create_setup_intent: #{e}"
end
```

#### Using the create_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentResponse>, Integer, Hash)> create_setup_intent_with_http_info(opts)

```ruby
begin
  # Create Setup Intent
  data, status_code, headers = api_instance.create_setup_intent_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->create_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_intent_create_request** | [**SetupIntentCreateRequest**](SetupIntentCreateRequest.md) |  | [optional] |

### Return type

[**SetupIntentResponse**](SetupIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_setup_intent

> <SetupIntentListResponse> get_all_setup_intent(opts)

Get All Setup Intent

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

api_instance = PAYJPv2::SetupIntentsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  offset: 56 # Integer | データ取得を行う開始位置
}

begin
  # Get All Setup Intent
  result = api_instance.get_all_setup_intent(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->get_all_setup_intent: #{e}"
end
```

#### Using the get_all_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentListResponse>, Integer, Hash)> get_all_setup_intent_with_http_info(opts)

```ruby
begin
  # Get All Setup Intent
  data, status_code, headers = api_instance.get_all_setup_intent_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->get_all_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **offset** | **Integer** | データ取得を行う開始位置 | [optional][default to 0] |

### Return type

[**SetupIntentListResponse**](SetupIntentListResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## retrieve_setup_intent

> <SetupIntentResponse> retrieve_setup_intent(setup_intent_id)

Retrieve Setup Intent

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

api_instance = PAYJPv2::SetupIntentsApi.new
setup_intent_id = 'setup_intent_id_example' # String | 

begin
  # Retrieve Setup Intent
  result = api_instance.retrieve_setup_intent(setup_intent_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->retrieve_setup_intent: #{e}"
end
```

#### Using the retrieve_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentResponse>, Integer, Hash)> retrieve_setup_intent_with_http_info(setup_intent_id)

```ruby
begin
  # Retrieve Setup Intent
  data, status_code, headers = api_instance.retrieve_setup_intent_with_http_info(setup_intent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->retrieve_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_intent_id** | **String** |  |  |

### Return type

[**SetupIntentResponse**](SetupIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_setup_intent

> <SetupIntentResponse> update_setup_intent(setup_intent_id, setup_intent_update_request)

Update Setup Intent

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

api_instance = PAYJPv2::SetupIntentsApi.new
setup_intent_id = 'setup_intent_id_example' # String | 
setup_intent_update_request = PAYJPv2::SetupIntentUpdateRequest.new # SetupIntentUpdateRequest | 

begin
  # Update Setup Intent
  result = api_instance.update_setup_intent(setup_intent_id, setup_intent_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->update_setup_intent: #{e}"
end
```

#### Using the update_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntentResponse>, Integer, Hash)> update_setup_intent_with_http_info(setup_intent_id, setup_intent_update_request)

```ruby
begin
  # Update Setup Intent
  data, status_code, headers = api_instance.update_setup_intent_with_http_info(setup_intent_id, setup_intent_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntentResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupIntentsApi->update_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_intent_id** | **String** |  |  |
| **setup_intent_update_request** | [**SetupIntentUpdateRequest**](SetupIntentUpdateRequest.md) |  |  |

### Return type

[**SetupIntentResponse**](SetupIntentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

