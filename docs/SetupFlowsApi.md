# PAYJPv2::SetupFlowsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_setup_flow**](SetupFlowsApi.md#cancel_setup_flow) | **POST** /v2/setup_flows/{setup_flow_id}/cancel | Cancel Setup Flow |
| [**confirm_setup_flow**](SetupFlowsApi.md#confirm_setup_flow) | **POST** /v2/setup_flows/{setup_flow_id}/confirm | Confirm Setup Flow |
| [**create_setup_flow**](SetupFlowsApi.md#create_setup_flow) | **POST** /v2/setup_flows | Create Setup Flow |
| [**get_all_setup_flow**](SetupFlowsApi.md#get_all_setup_flow) | **GET** /v2/setup_flows | Get All Setup Flow |
| [**retrieve_setup_flow**](SetupFlowsApi.md#retrieve_setup_flow) | **GET** /v2/setup_flows/{setup_flow_id} | Retrieve Setup Flow |
| [**update_setup_flow**](SetupFlowsApi.md#update_setup_flow) | **POST** /v2/setup_flows/{setup_flow_id} | Update Setup Flow |


## cancel_setup_flow

> <SetupFlowResponse> cancel_setup_flow(setup_flow_id, opts)

Cancel Setup Flow

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

api_instance = PAYJPv2::SetupFlowsApi.new
setup_flow_id = 'setup_flow_id_example' # String | 
opts = {
  setup_flow_cancel_request: PAYJPv2::SetupFlowCancelRequest.new # SetupFlowCancelRequest | 
}

begin
  # Cancel Setup Flow
  result = api_instance.cancel_setup_flow(setup_flow_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->cancel_setup_flow: #{e}"
end
```

#### Using the cancel_setup_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupFlowResponse>, Integer, Hash)> cancel_setup_flow_with_http_info(setup_flow_id, opts)

```ruby
begin
  # Cancel Setup Flow
  data, status_code, headers = api_instance.cancel_setup_flow_with_http_info(setup_flow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->cancel_setup_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_flow_id** | **String** |  |  |
| **setup_flow_cancel_request** | [**SetupFlowCancelRequest**](SetupFlowCancelRequest.md) |  | [optional] |

### Return type

[**SetupFlowResponse**](SetupFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## confirm_setup_flow

> <SetupFlowResponse> confirm_setup_flow(setup_flow_id, opts)

Confirm Setup Flow

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

api_instance = PAYJPv2::SetupFlowsApi.new
setup_flow_id = 'setup_flow_id_example' # String | 
opts = {
  setup_flow_confirm_request: PAYJPv2::SetupFlowConfirmRequest.new # SetupFlowConfirmRequest | 
}

begin
  # Confirm Setup Flow
  result = api_instance.confirm_setup_flow(setup_flow_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->confirm_setup_flow: #{e}"
end
```

#### Using the confirm_setup_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupFlowResponse>, Integer, Hash)> confirm_setup_flow_with_http_info(setup_flow_id, opts)

```ruby
begin
  # Confirm Setup Flow
  data, status_code, headers = api_instance.confirm_setup_flow_with_http_info(setup_flow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->confirm_setup_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_flow_id** | **String** |  |  |
| **setup_flow_confirm_request** | [**SetupFlowConfirmRequest**](SetupFlowConfirmRequest.md) |  | [optional] |

### Return type

[**SetupFlowResponse**](SetupFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_setup_flow

> <SetupFlowResponse> create_setup_flow(opts)

Create Setup Flow

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

api_instance = PAYJPv2::SetupFlowsApi.new
opts = {
  setup_flow_create_request: PAYJPv2::SetupFlowCreateRequest.new # SetupFlowCreateRequest | 
}

begin
  # Create Setup Flow
  result = api_instance.create_setup_flow(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->create_setup_flow: #{e}"
end
```

#### Using the create_setup_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupFlowResponse>, Integer, Hash)> create_setup_flow_with_http_info(opts)

```ruby
begin
  # Create Setup Flow
  data, status_code, headers = api_instance.create_setup_flow_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->create_setup_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_flow_create_request** | [**SetupFlowCreateRequest**](SetupFlowCreateRequest.md) |  | [optional] |

### Return type

[**SetupFlowResponse**](SetupFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_setup_flow

> <SetupFlowListResponse> get_all_setup_flow(opts)

Get All Setup Flow

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

api_instance = PAYJPv2::SetupFlowsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Setup Flow
  result = api_instance.get_all_setup_flow(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->get_all_setup_flow: #{e}"
end
```

#### Using the get_all_setup_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupFlowListResponse>, Integer, Hash)> get_all_setup_flow_with_http_info(opts)

```ruby
begin
  # Get All Setup Flow
  data, status_code, headers = api_instance.get_all_setup_flow_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupFlowListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->get_all_setup_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**SetupFlowListResponse**](SetupFlowListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## retrieve_setup_flow

> <SetupFlowResponse> retrieve_setup_flow(setup_flow_id)

Retrieve Setup Flow

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

api_instance = PAYJPv2::SetupFlowsApi.new
setup_flow_id = 'setup_flow_id_example' # String | 

begin
  # Retrieve Setup Flow
  result = api_instance.retrieve_setup_flow(setup_flow_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->retrieve_setup_flow: #{e}"
end
```

#### Using the retrieve_setup_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupFlowResponse>, Integer, Hash)> retrieve_setup_flow_with_http_info(setup_flow_id)

```ruby
begin
  # Retrieve Setup Flow
  data, status_code, headers = api_instance.retrieve_setup_flow_with_http_info(setup_flow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->retrieve_setup_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_flow_id** | **String** |  |  |

### Return type

[**SetupFlowResponse**](SetupFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_setup_flow

> <SetupFlowResponse> update_setup_flow(setup_flow_id, setup_flow_update_request)

Update Setup Flow

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

api_instance = PAYJPv2::SetupFlowsApi.new
setup_flow_id = 'setup_flow_id_example' # String | 
setup_flow_update_request = PAYJPv2::SetupFlowUpdateRequest.new # SetupFlowUpdateRequest | 

begin
  # Update Setup Flow
  result = api_instance.update_setup_flow(setup_flow_id, setup_flow_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->update_setup_flow: #{e}"
end
```

#### Using the update_setup_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupFlowResponse>, Integer, Hash)> update_setup_flow_with_http_info(setup_flow_id, setup_flow_update_request)

```ruby
begin
  # Update Setup Flow
  data, status_code, headers = api_instance.update_setup_flow_with_http_info(setup_flow_id, setup_flow_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupFlowResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling SetupFlowsApi->update_setup_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_flow_id** | **String** |  |  |
| **setup_flow_update_request** | [**SetupFlowUpdateRequest**](SetupFlowUpdateRequest.md) |  |  |

### Return type

[**SetupFlowResponse**](SetupFlowResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

