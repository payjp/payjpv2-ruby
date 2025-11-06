# PAYJPv2::PaymentTransactionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_payment_transaction**](PaymentTransactionsApi.md#get_all_payment_transaction) | **GET** /v2/payment_transactions | Get All Payment Transaction |
| [**retrieve_payment_transaction**](PaymentTransactionsApi.md#retrieve_payment_transaction) | **GET** /v2/payment_transactions/{payment_transaction_id} | Retrieve Payment Transaction |


## get_all_payment_transaction

> <PaymentTransactionListResponse> get_all_payment_transaction(opts)

Get All Payment Transaction

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

api_instance = PAYJPv2::PaymentTransactionsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example', # String | このIDより前のデータを取得
  term_id: 'term_id_example', # String | term ID
  type: 'type_example', # String | 取引タイプ
  payment_method_type: 'payment_method_type_example' # String | 支払い方法タイプ
}

begin
  # Get All Payment Transaction
  result = api_instance.get_all_payment_transaction(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentTransactionsApi->get_all_payment_transaction: #{e}"
end
```

#### Using the get_all_payment_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentTransactionListResponse>, Integer, Hash)> get_all_payment_transaction_with_http_info(opts)

```ruby
begin
  # Get All Payment Transaction
  data, status_code, headers = api_instance.get_all_payment_transaction_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentTransactionListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentTransactionsApi->get_all_payment_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |
| **term_id** | **String** | term ID | [optional] |
| **type** | **String** | 取引タイプ | [optional] |
| **payment_method_type** | **String** | 支払い方法タイプ | [optional] |

### Return type

[**PaymentTransactionListResponse**](PaymentTransactionListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## retrieve_payment_transaction

> <PaymentTransactionResponse> retrieve_payment_transaction(payment_transaction_id)

Retrieve Payment Transaction

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

api_instance = PAYJPv2::PaymentTransactionsApi.new
payment_transaction_id = 'payment_transaction_id_example' # String | 

begin
  # Retrieve Payment Transaction
  result = api_instance.retrieve_payment_transaction(payment_transaction_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentTransactionsApi->retrieve_payment_transaction: #{e}"
end
```

#### Using the retrieve_payment_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentTransactionResponse>, Integer, Hash)> retrieve_payment_transaction_with_http_info(payment_transaction_id)

```ruby
begin
  # Retrieve Payment Transaction
  data, status_code, headers = api_instance.retrieve_payment_transaction_with_http_info(payment_transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentTransactionResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling PaymentTransactionsApi->retrieve_payment_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_transaction_id** | **String** |  |  |

### Return type

[**PaymentTransactionResponse**](PaymentTransactionResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

