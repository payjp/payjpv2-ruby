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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PAYJPv2::TaxRatesApi.new
tax_rate_create_request = PAYJPv2::TaxRateCreateRequest.new({display_name: 'display_name_example', inclusive: false, percentage: 3.56}) # TaxRateCreateRequest | 

begin
  # Create Tax Rate
  result = api_instance.create_tax_rate(tax_rate_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->create_tax_rate: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Create Tax Rate
  data, status_code, headers = api_instance.create_tax_rate(tax_rate_create_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRateDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->create_tax_rate: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_rate_create_request** | [**TaxRateCreateRequest**](TaxRateCreateRequest.md) |  |  |

### Return type

[**TaxRateDetailsResponse**](TaxRateDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PAYJPv2::TaxRatesApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Tax Rates
  result = api_instance.get_all_tax_rates(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->get_all_tax_rates: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Tax Rates
  data, status_code, headers = api_instance.get_all_tax_rates(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRateListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->get_all_tax_rates: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**TaxRateListResponse**](TaxRateListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Tax Rate
  data, status_code, headers = api_instance.get_tax_rate(tax_rate_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRateDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->get_tax_rate: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_rate_id** | **String** |  |  |

### Return type

[**TaxRateDetailsResponse**](TaxRateDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Update Tax Rate
  data, status_code, headers = api_instance.update_tax_rate(tax_rate_id, tax_rate_update_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRateDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TaxRatesApi->update_tax_rate: #{e}"
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

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

