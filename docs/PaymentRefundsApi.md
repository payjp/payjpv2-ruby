# PAYJPv2::PaymentRefundsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_refund**](PaymentRefundsApi.md#create_payment_refund) | **POST** /v2/payment_refunds | Create Payment Refund |
| [**get_all_payment_refunds**](PaymentRefundsApi.md#get_all_payment_refunds) | **GET** /v2/payment_refunds | Get All Payment Refunds |
| [**retrieve_payment_refund**](PaymentRefundsApi.md#retrieve_payment_refund) | **GET** /v2/payment_refunds/{payment_refund_id} | Retrieve Payment Refund |
| [**update_payment_refund**](PaymentRefundsApi.md#update_payment_refund) | **POST** /v2/payment_refunds/{payment_refund_id} | Update Payment Refund |


## create_payment_refund

> <PaymentRefundResponse> create_payment_refund(payment_refund_create_request)

Create Payment Refund

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

api_instance = PAYJPv2::PaymentRefundsApi.new
payment_refund_create_request = PAYJPv2::PaymentRefundCreateRequest.new({payment_flow: 'payment_flow_example'}) # PaymentRefundCreateRequest | 

begin
  # Create Payment Refund
  result = api_instance.create_payment_refund(payment_refund_create_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentRefundsApi->create_payment_refund: #{e}"
end
```

#### Using the create_payment_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentRefundResponse>, Integer, Hash)> create_payment_refund_with_http_info(payment_refund_create_request)

```ruby
begin
  # Create Payment Refund
  data, status_code, headers = api_instance.create_payment_refund_with_http_info(payment_refund_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentRefundResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentRefundsApi->create_payment_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_refund_create_request** | [**PaymentRefundCreateRequest**](PaymentRefundCreateRequest.md) |  |  |

### Return type

[**PaymentRefundResponse**](PaymentRefundResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_all_payment_refunds

> <PaymentRefundListResponse> get_all_payment_refunds(opts)

Get All Payment Refunds

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

api_instance = PAYJPv2::PaymentRefundsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example' # String | このIDより前のデータを取得
}

begin
  # Get All Payment Refunds
  result = api_instance.get_all_payment_refunds(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentRefundsApi->get_all_payment_refunds: #{e}"
end
```

#### Using the get_all_payment_refunds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentRefundListResponse>, Integer, Hash)> get_all_payment_refunds_with_http_info(opts)

```ruby
begin
  # Get All Payment Refunds
  data, status_code, headers = api_instance.get_all_payment_refunds_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentRefundListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentRefundsApi->get_all_payment_refunds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |

### Return type

[**PaymentRefundListResponse**](PaymentRefundListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## retrieve_payment_refund

> <PaymentRefundResponse> retrieve_payment_refund(payment_refund_id)

Retrieve Payment Refund

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

api_instance = PAYJPv2::PaymentRefundsApi.new
payment_refund_id = 'payment_refund_id_example' # String | 

begin
  # Retrieve Payment Refund
  result = api_instance.retrieve_payment_refund(payment_refund_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentRefundsApi->retrieve_payment_refund: #{e}"
end
```

#### Using the retrieve_payment_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentRefundResponse>, Integer, Hash)> retrieve_payment_refund_with_http_info(payment_refund_id)

```ruby
begin
  # Retrieve Payment Refund
  data, status_code, headers = api_instance.retrieve_payment_refund_with_http_info(payment_refund_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentRefundResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentRefundsApi->retrieve_payment_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_refund_id** | **String** |  |  |

### Return type

[**PaymentRefundResponse**](PaymentRefundResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_payment_refund

> <PaymentRefundResponse> update_payment_refund(payment_refund_id, payment_refund_update_request)

Update Payment Refund

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

api_instance = PAYJPv2::PaymentRefundsApi.new
payment_refund_id = 'payment_refund_id_example' # String | 
payment_refund_update_request = PAYJPv2::PaymentRefundUpdateRequest.new # PaymentRefundUpdateRequest | 

begin
  # Update Payment Refund
  result = api_instance.update_payment_refund(payment_refund_id, payment_refund_update_request)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentRefundsApi->update_payment_refund: #{e}"
end
```

#### Using the update_payment_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentRefundResponse>, Integer, Hash)> update_payment_refund_with_http_info(payment_refund_id, payment_refund_update_request)

```ruby
begin
  # Update Payment Refund
  data, status_code, headers = api_instance.update_payment_refund_with_http_info(payment_refund_id, payment_refund_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentRefundResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentRefundsApi->update_payment_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_refund_id** | **String** |  |  |
| **payment_refund_update_request** | [**PaymentRefundUpdateRequest**](PaymentRefundUpdateRequest.md) |  |  |

### Return type

[**PaymentRefundResponse**](PaymentRefundResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

