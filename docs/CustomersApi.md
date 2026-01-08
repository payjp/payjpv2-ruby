# PAYJPv2::CustomersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /v2/customers | Create Customer |
| [**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /v2/customers/{customer_id} | Delete Customer |
| [**get_all_customers**](CustomersApi.md#get_all_customers) | **GET** /v2/customers | Get All Customers |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /v2/customers/{customer_id} | Get Customer |
| [**get_customer_payment_methods**](CustomersApi.md#get_customer_payment_methods) | **GET** /v2/customers/{customer_id}/payment_methods | Get Customer Payment Methods |
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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Create Customer
  data, status_code, headers = api_instance.create_customer(customer_create_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_create_request** | [**CustomerCreateRequest**](CustomerCreateRequest.md) |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Delete Customer
  data, status_code, headers = api_instance.delete_customer(customer_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->delete_customer: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PAYJPv2::CustomersApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Customers
  result = api_instance.get_all_customers(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_all_customers: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Customers
  data, status_code, headers = api_instance.get_all_customers(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_all_customers: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**CustomerListResponse**](CustomerListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Customer
  data, status_code, headers = api_instance.get_customer(customer_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_customer_payment_methods

> <PaymentMethodListResponse> get_customer_payment_methods(customer_id, opts)

Get Customer Payment Methods

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

api_instance = PAYJPv2::CustomersApi.new
customer_id = 'customer_id_example' # String | 
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get Customer Payment Methods
  result = api_instance.get_customer_payment_methods(customer_id, opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_customer_payment_methods: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Customer Payment Methods
  data, status_code, headers = api_instance.get_customer_payment_methods(customer_id, opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->get_customer_payment_methods: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**PaymentMethodListResponse**](PaymentMethodListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Update Customer
  data, status_code, headers = api_instance.update_customer(customer_id, customer_update_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
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

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

