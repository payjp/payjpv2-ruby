# PAYJPv2::TaxRatesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tax_rate**](TaxRatesApi.md#create_tax_rate) | **POST** /v2/tax_rates | Create Tax Rate |
| [**get_all_tax_rates**](TaxRatesApi.md#get_all_tax_rates) | **GET** /v2/tax_rates | Get All Tax Rates |
| [**get_tax_rate**](TaxRatesApi.md#get_tax_rate) | **GET** /v2/tax_rates/{tax_rate_id} | Get Tax Rate |
| [**update_tax_rate**](TaxRatesApi.md#update_tax_rate) | **POST** /v2/tax_rates/{tax_rate_id} | Update Tax Rate |


## create_tax_rate

> <TaxRateDetailsResponse> create_tax_rate(tax_rate_create_request)

Create Tax Rate

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

api_instance = PAYJPv2::TaxRatesApi.new
tax_rate_create_request = PAYJPv2::TaxRateCreateRequest.new # TaxRateCreateRequest | 

begin
  # Create Tax Rate
  result = api_instance.create_tax_rate(tax_rate_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->create_tax_rate: #{e}"
end
```

#### Using the create_tax_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxRateDetailsResponse>, Integer, Hash)> create_tax_rate_with_http_info(tax_rate_create_request)

```ruby
begin
  # Create Tax Rate
  data, status_code, headers = api_instance.create_tax_rate_with_http_info(tax_rate_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRateDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->create_tax_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_rate_create_request** | [**TaxRateCreateRequest**](TaxRateCreateRequest.md) |  |  |

### Return type

[**TaxRateDetailsResponse**](TaxRateDetailsResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_tax_rates

> <TaxRateListResponse> get_all_tax_rates(opts)

Get All Tax Rates

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

api_instance = PAYJPv2::TaxRatesApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  offset: 56 # Integer | データ取得を行う開始位置
}

begin
  # Get All Tax Rates
  result = api_instance.get_all_tax_rates(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->get_all_tax_rates: #{e}"
end
```

#### Using the get_all_tax_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxRateListResponse>, Integer, Hash)> get_all_tax_rates_with_http_info(opts)

```ruby
begin
  # Get All Tax Rates
  data, status_code, headers = api_instance.get_all_tax_rates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRateListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->get_all_tax_rates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **offset** | **Integer** | データ取得を行う開始位置 | [optional][default to 0] |

### Return type

[**TaxRateListResponse**](TaxRateListResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_tax_rate

> <TaxRateDetailsResponse> get_tax_rate(tax_rate_id)

Get Tax Rate

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

api_instance = PAYJPv2::TaxRatesApi.new
tax_rate_id = 'tax_rate_id_example' # String | 

begin
  # Get Tax Rate
  result = api_instance.get_tax_rate(tax_rate_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->get_tax_rate: #{e}"
end
```

#### Using the get_tax_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxRateDetailsResponse>, Integer, Hash)> get_tax_rate_with_http_info(tax_rate_id)

```ruby
begin
  # Get Tax Rate
  data, status_code, headers = api_instance.get_tax_rate_with_http_info(tax_rate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRateDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->get_tax_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_rate_id** | **String** |  |  |

### Return type

[**TaxRateDetailsResponse**](TaxRateDetailsResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_tax_rate

> <TaxRateDetailsResponse> update_tax_rate(tax_rate_id, tax_rate_update_request)

Update Tax Rate

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

api_instance = PAYJPv2::TaxRatesApi.new
tax_rate_id = 'tax_rate_id_example' # String | 
tax_rate_update_request = PAYJPv2::TaxRateUpdateRequest.new # TaxRateUpdateRequest | 

begin
  # Update Tax Rate
  result = api_instance.update_tax_rate(tax_rate_id, tax_rate_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->update_tax_rate: #{e}"
end
```

#### Using the update_tax_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxRateDetailsResponse>, Integer, Hash)> update_tax_rate_with_http_info(tax_rate_id, tax_rate_update_request)

```ruby
begin
  # Update Tax Rate
  data, status_code, headers = api_instance.update_tax_rate_with_http_info(tax_rate_id, tax_rate_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRateDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->update_tax_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_rate_id** | **String** |  |  |
| **tax_rate_update_request** | [**TaxRateUpdateRequest**](TaxRateUpdateRequest.md) |  |  |

### Return type

[**TaxRateDetailsResponse**](TaxRateDetailsResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

