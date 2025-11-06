# PAYJPv2::BalancesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_balance_url**](BalancesApi.md#create_balance_url) | **POST** /v2/balances/{balance_id}/balance_urls | Create Balance Url |
| [**get_all_balances**](BalancesApi.md#get_all_balances) | **GET** /v2/balances | Get All Balances |
| [**retrieve_balance**](BalancesApi.md#retrieve_balance) | **GET** /v2/balances/{balance_id} | Retrieve Balance |


## create_balance_url

> <BalanceURLResponse> create_balance_url(balance_id)

Create Balance Url

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

api_instance = PAYJPv2::BalancesApi.new
balance_id = 'balance_id_example' # String | 

begin
  # Create Balance Url
  result = api_instance.create_balance_url(balance_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->create_balance_url: #{e}"
end
```

#### Using the create_balance_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BalanceURLResponse>, Integer, Hash)> create_balance_url_with_http_info(balance_id)

```ruby
begin
  # Create Balance Url
  data, status_code, headers = api_instance.create_balance_url_with_http_info(balance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceURLResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->create_balance_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_id** | **String** |  |  |

### Return type

[**BalanceURLResponse**](BalanceURLResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_all_balances

> <BalanceListResponse> get_all_balances(opts)

Get All Balances

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

api_instance = PAYJPv2::BalancesApi.new
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定した日付以降のデータを取得
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定した日付以前のデータを取得
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example', # String | このIDより前のデータを取得
  state: PAYJPv2::BalanceState::, # BalanceState | stateが指定した値であるオブジェクトに限定
  closed: true, # Boolean | closedが指定した値であるオブジェクトに限定
  since_due_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 入金予定日/振込期限日が指定した日時以降のデータのみ取得
  until_due_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 入金予定日/振込期限日が指定した日時以前のデータのみ取得
}

begin
  # Get All Balances
  result = api_instance.get_all_balances(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->get_all_balances: #{e}"
end
```

#### Using the get_all_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BalanceListResponse>, Integer, Hash)> get_all_balances_with_http_info(opts)

```ruby
begin
  # Get All Balances
  data, status_code, headers = api_instance.get_all_balances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->get_all_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** | 指定した日付以降のデータを取得 | [optional] |
| **_until** | **Time** | 指定した日付以前のデータを取得 | [optional] |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |
| **state** | [**BalanceState**](.md) | stateが指定した値であるオブジェクトに限定 | [optional] |
| **closed** | **Boolean** | closedが指定した値であるオブジェクトに限定 | [optional] |
| **since_due_date** | **Time** | 入金予定日/振込期限日が指定した日時以降のデータのみ取得 | [optional] |
| **until_due_date** | **Time** | 入金予定日/振込期限日が指定した日時以前のデータのみ取得 | [optional] |

### Return type

[**BalanceListResponse**](BalanceListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## retrieve_balance

> <BalanceResponse> retrieve_balance(balance_id)

Retrieve Balance

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

api_instance = PAYJPv2::BalancesApi.new
balance_id = 'balance_id_example' # String | 

begin
  # Retrieve Balance
  result = api_instance.retrieve_balance(balance_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->retrieve_balance: #{e}"
end
```

#### Using the retrieve_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BalanceResponse>, Integer, Hash)> retrieve_balance_with_http_info(balance_id)

```ruby
begin
  # Retrieve Balance
  data, status_code, headers = api_instance.retrieve_balance_with_http_info(balance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->retrieve_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_id** | **String** |  |  |

### Return type

[**BalanceResponse**](BalanceResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

