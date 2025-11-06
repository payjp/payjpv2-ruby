# PAYJPv2::ProductsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product**](ProductsApi.md#create_product) | **POST** /v2/products | Create Product |
| [**delete_product**](ProductsApi.md#delete_product) | **DELETE** /v2/products/{product_id} | Delete Product |
| [**get_all_products**](ProductsApi.md#get_all_products) | **GET** /v2/products | Get All Products |
| [**get_product**](ProductsApi.md#get_product) | **GET** /v2/products/{product_id} | Get Product |
| [**update_product**](ProductsApi.md#update_product) | **POST** /v2/products/{product_id} | Update Product |


## create_product

> <ProductDetailsResponse> create_product(product_create_request)

Create Product

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

api_instance = PAYJPv2::ProductsApi.new
product_create_request = PAYJPv2::ProductCreateRequest.new({name: 'name_example'}) # ProductCreateRequest | 

begin
  # Create Product
  result = api_instance.create_product(product_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end
```

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductDetailsResponse>, Integer, Hash)> create_product_with_http_info(product_create_request)

```ruby
begin
  # Create Product
  data, status_code, headers = api_instance.create_product_with_http_info(product_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_create_request** | [**ProductCreateRequest**](ProductCreateRequest.md) |  |  |

### Return type

[**ProductDetailsResponse**](ProductDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_product

> <ProductDeletedResponse> delete_product(product_id)

Delete Product

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

api_instance = PAYJPv2::ProductsApi.new
product_id = 'product_id_example' # String | 

begin
  # Delete Product
  result = api_instance.delete_product(product_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end
```

#### Using the delete_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductDeletedResponse>, Integer, Hash)> delete_product_with_http_info(product_id)

```ruby
begin
  # Delete Product
  data, status_code, headers = api_instance.delete_product_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductDeletedResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->delete_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |

### Return type

[**ProductDeletedResponse**](ProductDeletedResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_all_products

> <ProductListResponse> get_all_products(opts)

Get All Products

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

api_instance = PAYJPv2::ProductsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Products
  result = api_instance.get_all_products(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->get_all_products: #{e}"
end
```

#### Using the get_all_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductListResponse>, Integer, Hash)> get_all_products_with_http_info(opts)

```ruby
begin
  # Get All Products
  data, status_code, headers = api_instance.get_all_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->get_all_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**ProductListResponse**](ProductListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_product

> <ProductDetailsResponse> get_product(product_id)

Get Product

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

api_instance = PAYJPv2::ProductsApi.new
product_id = 'product_id_example' # String | 

begin
  # Get Product
  result = api_instance.get_product(product_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->get_product: #{e}"
end
```

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductDetailsResponse>, Integer, Hash)> get_product_with_http_info(product_id)

```ruby
begin
  # Get Product
  data, status_code, headers = api_instance.get_product_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |

### Return type

[**ProductDetailsResponse**](ProductDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_product

> <ProductDetailsResponse> update_product(product_id, product_update_request)

Update Product

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

api_instance = PAYJPv2::ProductsApi.new
product_id = 'product_id_example' # String | 
product_update_request = PAYJPv2::ProductUpdateRequest.new # ProductUpdateRequest | 

begin
  # Update Product
  result = api_instance.update_product(product_id, product_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductDetailsResponse>, Integer, Hash)> update_product_with_http_info(product_id, product_update_request)

```ruby
begin
  # Update Product
  data, status_code, headers = api_instance.update_product_with_http_info(product_id, product_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling ProductsApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **product_update_request** | [**ProductUpdateRequest**](ProductUpdateRequest.md) |  |  |

### Return type

[**ProductDetailsResponse**](ProductDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

