# PAYJPv2::CustomersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /v2/customers | Create Customer |
| [**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /v2/customers/{customer_id} | Delete Customer |
| [**get_all_customers**](CustomersApi.md#get_all_customers) | **GET** /v2/customers | Get All Customers |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /v2/customers/{customer_id} | Get Customer |
| [**update_customer**](CustomersApi.md#update_customer) | **POST** /v2/customers/{customer_id} | Update Customer |


## create_customer

> <CustomerResponse> create_customer(customer_create_request)

Create Customer

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

api_instance = PAYJPv2::CustomersApi.new
customer_create_request = PAYJPv2::CustomerCreateRequest.new # CustomerCreateRequest | 

begin
  # Create Customer
  result = api_instance.create_customer(customer_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> create_customer_with_http_info(customer_create_request)

```ruby
begin
  # Create Customer
  data, status_code, headers = api_instance.create_customer_with_http_info(customer_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_create_request** | [**CustomerCreateRequest**](CustomerCreateRequest.md) |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_customer

> <CustomerResponse> delete_customer(customer_id)

Delete Customer

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

api_instance = PAYJPv2::CustomersApi.new
customer_id = 'customer_id_example' # String | 

begin
  # Delete Customer
  result = api_instance.delete_customer(customer_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->delete_customer: #{e}"
end
```

#### Using the delete_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> delete_customer_with_http_info(customer_id)

```ruby
begin
  # Delete Customer
  data, status_code, headers = api_instance.delete_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->delete_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_all_customers

> <CustomerListResponse> get_all_customers(opts)

Get All Customers

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

api_instance = PAYJPv2::CustomersApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  offset: 56 # Integer | データ取得を行う開始位置
}

begin
  # Get All Customers
  result = api_instance.get_all_customers(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_all_customers: #{e}"
end
```

#### Using the get_all_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerListResponse>, Integer, Hash)> get_all_customers_with_http_info(opts)

```ruby
begin
  # Get All Customers
  data, status_code, headers = api_instance.get_all_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_all_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **offset** | **Integer** | データ取得を行う開始位置 | [optional][default to 0] |

### Return type

[**CustomerListResponse**](CustomerListResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_customer

> <CustomerResponse> get_customer(customer_id)

Get Customer

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

api_instance = PAYJPv2::CustomersApi.new
customer_id = 'customer_id_example' # String | 

begin
  # Get Customer
  result = api_instance.get_customer(customer_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> get_customer_with_http_info(customer_id)

```ruby
begin
  # Get Customer
  data, status_code, headers = api_instance.get_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_customer

> <CustomerResponse> update_customer(customer_id, customer_update_request)

Update Customer

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

api_instance = PAYJPv2::CustomersApi.new
customer_id = 'customer_id_example' # String | 
customer_update_request = PAYJPv2::CustomerUpdateRequest.new # CustomerUpdateRequest | 

begin
  # Update Customer
  result = api_instance.update_customer(customer_id, customer_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> update_customer_with_http_info(customer_id, customer_update_request)

```ruby
begin
  # Update Customer
  data, status_code, headers = api_instance.update_customer_with_http_info(customer_id, customer_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **customer_update_request** | [**CustomerUpdateRequest**](CustomerUpdateRequest.md) |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

