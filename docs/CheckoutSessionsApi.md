# PAYJPv2::CheckoutSessionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_checkout_session**](CheckoutSessionsApi.md#create_checkout_session) | **POST** /v2/checkout/sessions | Create Checkout Session |
| [**get_all_checkout_session_line_items**](CheckoutSessionsApi.md#get_all_checkout_session_line_items) | **GET** /v2/checkout/sessions/{checkout_session_id}/line_items | Get All Checkout Session Line Items |
| [**get_all_checkout_sessions**](CheckoutSessionsApi.md#get_all_checkout_sessions) | **GET** /v2/checkout/sessions | Get All Checkout Sessions |
| [**get_checkout_session**](CheckoutSessionsApi.md#get_checkout_session) | **GET** /v2/checkout/sessions/{checkout_session_id} | Get Checkout Session |
| [**update_checkout_session**](CheckoutSessionsApi.md#update_checkout_session) | **POST** /v2/checkout/sessions/{checkout_session_id} | Update Checkout Session |


## create_checkout_session

> <CheckoutSessionDetailsResponse> create_checkout_session(checkout_session_create_request)

Create Checkout Session

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

api_instance = PAYJPv2::CheckoutSessionsApi.new
checkout_session_create_request = PAYJPv2::CheckoutSessionCreateRequest.new({mode: PAYJPv2::CheckoutSessionMode::PAYMENT}) # CheckoutSessionCreateRequest | 

begin
  # Create Checkout Session
  result = api_instance.create_checkout_session(checkout_session_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->create_checkout_session: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Create Checkout Session
  data, status_code, headers = api_instance.create_checkout_session(checkout_session_create_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutSessionDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->create_checkout_session: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_session_create_request** | [**CheckoutSessionCreateRequest**](CheckoutSessionCreateRequest.md) |  |  |

### Return type

[**CheckoutSessionDetailsResponse**](CheckoutSessionDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_checkout_session_line_items

> <CheckoutSessionLineItemListResponse> get_all_checkout_session_line_items(checkout_session_id, opts)

Get All Checkout Session Line Items

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

api_instance = PAYJPv2::CheckoutSessionsApi.new
checkout_session_id = 'checkout_session_id_example' # String | 
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Checkout Session Line Items
  result = api_instance.get_all_checkout_session_line_items(checkout_session_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->get_all_checkout_session_line_items: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Checkout Session Line Items
  data, status_code, headers = api_instance.get_all_checkout_session_line_items(checkout_session_id, opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutSessionLineItemListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->get_all_checkout_session_line_items: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_session_id** | **String** |  |  |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**CheckoutSessionLineItemListResponse**](CheckoutSessionLineItemListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_all_checkout_sessions

> <CheckoutSessionListResponse> get_all_checkout_sessions(opts)

Get All Checkout Sessions

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

api_instance = PAYJPv2::CheckoutSessionsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Checkout Sessions
  result = api_instance.get_all_checkout_sessions(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->get_all_checkout_sessions: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Checkout Sessions
  data, status_code, headers = api_instance.get_all_checkout_sessions(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutSessionListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->get_all_checkout_sessions: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**CheckoutSessionListResponse**](CheckoutSessionListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_checkout_session

> <CheckoutSessionDetailsResponse> get_checkout_session(checkout_session_id)

Get Checkout Session

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

api_instance = PAYJPv2::CheckoutSessionsApi.new
checkout_session_id = 'checkout_session_id_example' # String | 

begin
  # Get Checkout Session
  result = api_instance.get_checkout_session(checkout_session_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->get_checkout_session: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Checkout Session
  data, status_code, headers = api_instance.get_checkout_session(checkout_session_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutSessionDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->get_checkout_session: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_session_id** | **String** |  |  |

### Return type

[**CheckoutSessionDetailsResponse**](CheckoutSessionDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_checkout_session

> <CheckoutSessionDetailsResponse> update_checkout_session(checkout_session_id, checkout_session_update_request)

Update Checkout Session

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

api_instance = PAYJPv2::CheckoutSessionsApi.new
checkout_session_id = 'checkout_session_id_example' # String | 
checkout_session_update_request = PAYJPv2::CheckoutSessionUpdateRequest.new # CheckoutSessionUpdateRequest | 

begin
  # Update Checkout Session
  result = api_instance.update_checkout_session(checkout_session_id, checkout_session_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->update_checkout_session: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Update Checkout Session
  data, status_code, headers = api_instance.update_checkout_session(checkout_session_id, checkout_session_update_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutSessionDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CheckoutSessionsApi->update_checkout_session: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_session_id** | **String** |  |  |
| **checkout_session_update_request** | [**CheckoutSessionUpdateRequest**](CheckoutSessionUpdateRequest.md) |  |  |

### Return type

[**CheckoutSessionDetailsResponse**](CheckoutSessionDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

