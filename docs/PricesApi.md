# PAYJPv2::PricesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_price**](PricesApi.md#create_price) | **POST** /v2/prices | Create Price |
| [**get_all_prices**](PricesApi.md#get_all_prices) | **GET** /v2/prices | Get All Prices |
| [**get_price**](PricesApi.md#get_price) | **GET** /v2/prices/{price_id} | Get Price |
| [**update_price**](PricesApi.md#update_price) | **POST** /v2/prices/{price_id} | Update Price |


## create_price

> <PriceDetailsResponse> create_price(price_create_request)

Create Price

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

api_instance = PAYJPv2::PricesApi.new
price_create_request = PAYJPv2::PriceCreateRequest.new({product_id: 'product_id_example', unit_amount: 37, currency: PAYJPv2::Currency::JPY}) # PriceCreateRequest | 

begin
  # Create Price
  result = api_instance.create_price(price_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PricesApi->create_price: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Create Price
  data, status_code, headers = api_instance.create_price(price_create_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PriceDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PricesApi->create_price: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_create_request** | [**PriceCreateRequest**](PriceCreateRequest.md) |  |  |

### Return type

[**PriceDetailsResponse**](PriceDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_prices

> <PriceListResponse> get_all_prices(opts)

Get All Prices

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

api_instance = PAYJPv2::PricesApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example', # String | このIDより前のデータを取得
  lookup_keys: ['inner_example'] # Array<String> | 価格を動的に取得するために使用される検索キー
}

begin
  # Get All Prices
  result = api_instance.get_all_prices(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PricesApi->get_all_prices: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Prices
  data, status_code, headers = api_instance.get_all_prices(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PriceListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PricesApi->get_all_prices: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |
| **lookup_keys** | [**Array&lt;String&gt;**](String.md) | 価格を動的に取得するために使用される検索キー | [optional] |

### Return type

[**PriceListResponse**](PriceListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_price

> <PriceDetailsResponse> get_price(price_id)

Get Price

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

api_instance = PAYJPv2::PricesApi.new
price_id = 'price_id_example' # String | 

begin
  # Get Price
  result = api_instance.get_price(price_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PricesApi->get_price: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Price
  data, status_code, headers = api_instance.get_price(price_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PriceDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PricesApi->get_price: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_id** | **String** |  |  |

### Return type

[**PriceDetailsResponse**](PriceDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_price

> <PriceDetailsResponse> update_price(price_id, price_update_request)

Update Price

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

api_instance = PAYJPv2::PricesApi.new
price_id = 'price_id_example' # String | 
price_update_request = PAYJPv2::PriceUpdateRequest.new # PriceUpdateRequest | 

begin
  # Update Price
  result = api_instance.update_price(price_id, price_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PricesApi->update_price: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Update Price
  data, status_code, headers = api_instance.update_price(price_id, price_update_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PriceDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PricesApi->update_price: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_id** | **String** |  |  |
| **price_update_request** | [**PriceUpdateRequest**](PriceUpdateRequest.md) |  |  |

### Return type

[**PriceDetailsResponse**](PriceDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

