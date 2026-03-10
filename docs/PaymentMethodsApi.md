# PAYJPv2::PaymentMethodsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_payment_method**](PaymentMethodsApi.md#attach_payment_method) | **POST** /v2/payment_methods/{payment_method_id}/attach | Attach Payment Method |
| [**create_payment_method**](PaymentMethodsApi.md#create_payment_method) | **POST** /v2/payment_methods | Create Payment Method |
| [**detach_payment_method**](PaymentMethodsApi.md#detach_payment_method) | **POST** /v2/payment_methods/{payment_method_id}/detach | Detach Payment Method |
| [**get_all_payment_methods**](PaymentMethodsApi.md#get_all_payment_methods) | **GET** /v2/payment_methods | Get All Payment Methods |
| [**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /v2/payment_methods/{payment_method_id} | Get Payment Method |
| [**get_payment_method_by_card**](PaymentMethodsApi.md#get_payment_method_by_card) | **GET** /v2/payment_methods/cards/{card_id} | Get Payment Method By Card |
| [**update_payment_method**](PaymentMethodsApi.md#update_payment_method) | **POST** /v2/payment_methods/{payment_method_id} | Update Payment Method |


## attach_payment_method

> <PaymentMethodResponse> attach_payment_method(payment_method_id, payment_method_attach_request)

Attach Payment Method

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

api_instance = PAYJPv2::PaymentMethodsApi.new
payment_method_id = 'payment_method_id_example' # String | 
payment_method_attach_request = PAYJPv2::PaymentMethodAttachRequest.new({customer_id: 'customer_id_example'}) # PaymentMethodAttachRequest | 

begin
  # Attach Payment Method
  result = api_instance.attach_payment_method(payment_method_id, payment_method_attach_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->attach_payment_method: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Attach Payment Method
  data, status_code, headers = api_instance.attach_payment_method(payment_method_id, payment_method_attach_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->attach_payment_method: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  |  |
| **payment_method_attach_request** | [**PaymentMethodAttachRequest**](PaymentMethodAttachRequest.md) |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_payment_method

> <PaymentMethodResponse> create_payment_method(payment_method_create_request)

Create Payment Method

**このエンドポイントはテストモードでのみ使用できます。**

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

api_instance = PAYJPv2::PaymentMethodsApi.new
payment_method_create_request = PAYJPv2::PaymentMethodApplePayCreateRequest.new({type: 'apple_pay', token: 'token_example'}) # PaymentMethodCreateRequest | 

begin
  # Create Payment Method
  result = api_instance.create_payment_method(payment_method_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Create Payment Method
  data, status_code, headers = api_instance.create_payment_method(payment_method_create_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_create_request** | [**PaymentMethodCreateRequest**](PaymentMethodCreateRequest.md) |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## detach_payment_method

> <PaymentMethodResponse> detach_payment_method(payment_method_id)

Detach Payment Method

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

api_instance = PAYJPv2::PaymentMethodsApi.new
payment_method_id = 'payment_method_id_example' # String | 

begin
  # Detach Payment Method
  result = api_instance.detach_payment_method(payment_method_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->detach_payment_method: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Detach Payment Method
  data, status_code, headers = api_instance.detach_payment_method(payment_method_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->detach_payment_method: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_all_payment_methods

> <PaymentMethodListResponse> get_all_payment_methods(opts)

Get All Payment Methods

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

api_instance = PAYJPv2::PaymentMethodsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Payment Methods
  result = api_instance.get_all_payment_methods(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_all_payment_methods: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Payment Methods
  data, status_code, headers = api_instance.get_all_payment_methods(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_all_payment_methods: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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


## get_payment_method

> <PaymentMethodResponse> get_payment_method(payment_method_id)

Get Payment Method

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

api_instance = PAYJPv2::PaymentMethodsApi.new
payment_method_id = 'payment_method_id_example' # String | 

begin
  # Get Payment Method
  result = api_instance.get_payment_method(payment_method_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Payment Method
  data, status_code, headers = api_instance.get_payment_method(payment_method_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_payment_method_by_card

> <PaymentMethodResponse> get_payment_method_by_card(card_id)

Get Payment Method By Card

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

api_instance = PAYJPv2::PaymentMethodsApi.new
card_id = 'card_id_example' # String | 

begin
  # Get Payment Method By Card
  result = api_instance.get_payment_method_by_card(card_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_by_card: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Payment Method By Card
  data, status_code, headers = api_instance.get_payment_method_by_card(card_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_by_card: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_id** | **String** |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_payment_method

> <PaymentMethodResponse> update_payment_method(payment_method_id, payment_method_update_request)

Update Payment Method

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

api_instance = PAYJPv2::PaymentMethodsApi.new
payment_method_id = 'payment_method_id_example' # String | 
payment_method_update_request = PAYJPv2::PaymentMethodApplePayUpdateRequest.new({type: 'apple_pay'}) # PaymentMethodUpdateRequest | 

begin
  # Update Payment Method
  result = api_instance.update_payment_method(payment_method_id, payment_method_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Update Payment Method
  data, status_code, headers = api_instance.update_payment_method(payment_method_id, payment_method_update_request, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  |  |
| **payment_method_update_request** | [**PaymentMethodUpdateRequest**](PaymentMethodUpdateRequest.md) |  |  |

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

