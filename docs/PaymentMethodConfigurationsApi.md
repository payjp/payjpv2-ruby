# PAYJPv2::PaymentMethodConfigurationsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_payment_method_configurations**](PaymentMethodConfigurationsApi.md#get_all_payment_method_configurations) | **GET** /v2/payment_method_configurations | Get All Payment Method Configurations |
| [**get_payment_method_configuration**](PaymentMethodConfigurationsApi.md#get_payment_method_configuration) | **GET** /v2/payment_method_configurations/{payment_method_configuration_id} | Get Payment Method Configuration |
| [**update_payment_method_configuration**](PaymentMethodConfigurationsApi.md#update_payment_method_configuration) | **POST** /v2/payment_method_configurations/{payment_method_configuration_id} | Update Payment Method Configuration |


## get_all_payment_method_configurations

> <PaymentMethodConfigurationListResponse> get_all_payment_method_configurations(opts)

Get All Payment Method Configurations

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

api_instance = PAYJPv2::PaymentMethodConfigurationsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Payment Method Configurations
  result = api_instance.get_all_payment_method_configurations(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodConfigurationsApi->get_all_payment_method_configurations: #{e}"
end
```

#### Using the get_all_payment_method_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodConfigurationListResponse>, Integer, Hash)> get_all_payment_method_configurations_with_http_info(opts)

```ruby
begin
  # Get All Payment Method Configurations
  data, status_code, headers = api_instance.get_all_payment_method_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodConfigurationListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodConfigurationsApi->get_all_payment_method_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**PaymentMethodConfigurationListResponse**](PaymentMethodConfigurationListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_method_configuration

> <PaymentMethodConfigurationDetailsResponse> get_payment_method_configuration(payment_method_configuration_id)

Get Payment Method Configuration

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

api_instance = PAYJPv2::PaymentMethodConfigurationsApi.new
payment_method_configuration_id = 'payment_method_configuration_id_example' # String | 

begin
  # Get Payment Method Configuration
  result = api_instance.get_payment_method_configuration(payment_method_configuration_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodConfigurationsApi->get_payment_method_configuration: #{e}"
end
```

#### Using the get_payment_method_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodConfigurationDetailsResponse>, Integer, Hash)> get_payment_method_configuration_with_http_info(payment_method_configuration_id)

```ruby
begin
  # Get Payment Method Configuration
  data, status_code, headers = api_instance.get_payment_method_configuration_with_http_info(payment_method_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodConfigurationDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodConfigurationsApi->get_payment_method_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_configuration_id** | **String** |  |  |

### Return type

[**PaymentMethodConfigurationDetailsResponse**](PaymentMethodConfigurationDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_payment_method_configuration

> <PaymentMethodConfigurationDetailsResponse> update_payment_method_configuration(payment_method_configuration_id, payment_method_configuration_update_request)

Update Payment Method Configuration

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

api_instance = PAYJPv2::PaymentMethodConfigurationsApi.new
payment_method_configuration_id = 'payment_method_configuration_id_example' # String | 
payment_method_configuration_update_request = PAYJPv2::PaymentMethodConfigurationUpdateRequest.new # PaymentMethodConfigurationUpdateRequest | 

begin
  # Update Payment Method Configuration
  result = api_instance.update_payment_method_configuration(payment_method_configuration_id, payment_method_configuration_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodConfigurationsApi->update_payment_method_configuration: #{e}"
end
```

#### Using the update_payment_method_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodConfigurationDetailsResponse>, Integer, Hash)> update_payment_method_configuration_with_http_info(payment_method_configuration_id, payment_method_configuration_update_request)

```ruby
begin
  # Update Payment Method Configuration
  data, status_code, headers = api_instance.update_payment_method_configuration_with_http_info(payment_method_configuration_id, payment_method_configuration_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodConfigurationDetailsResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodConfigurationsApi->update_payment_method_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_configuration_id** | **String** |  |  |
| **payment_method_configuration_update_request** | [**PaymentMethodConfigurationUpdateRequest**](PaymentMethodConfigurationUpdateRequest.md) |  |  |

### Return type

[**PaymentMethodConfigurationDetailsResponse**](PaymentMethodConfigurationDetailsResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

