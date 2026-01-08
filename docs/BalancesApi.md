# PAYJPv2::BalancesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_balance_url**](BalancesApi.md#create_balance_url) | **POST** /v2/balances/{balance_id}/balance_urls | Create Balance Url |
| [**get_all_balances**](BalancesApi.md#get_all_balances) | **GET** /v2/balances | Get All Balances |
| [**get_balance**](BalancesApi.md#get_balance) | **GET** /v2/balances/{balance_id} | Get Balance |


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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Create Balance Url
  data, status_code, headers = api_instance.create_balance_url(balance_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceURLResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->create_balance_url: #{e}"
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
  state: PAYJPv2::BalanceState::COLLECTING, # BalanceState | state が指定した値であるオブジェクトに限定
  closed: true, # Boolean | closed が指定した値であるオブジェクトに限定
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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Balances
  data, status_code, headers = api_instance.get_all_balances(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->get_all_balances: #{e}"
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
| **state** | [**BalanceState**](.md) | state が指定した値であるオブジェクトに限定 | [optional] |
| **closed** | **Boolean** | closed が指定した値であるオブジェクトに限定 | [optional] |
| **since_due_date** | **Time** | 入金予定日/振込期限日が指定した日時以降のデータのみ取得 | [optional] |
| **until_due_date** | **Time** | 入金予定日/振込期限日が指定した日時以前のデータのみ取得 | [optional] |

### Return type

[**BalanceListResponse**](BalanceListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_balance

> <BalanceResponse> get_balance(balance_id)

Get Balance

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
  # Get Balance
  result = api_instance.get_balance(balance_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->get_balance: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Balance
  data, status_code, headers = api_instance.get_balance(balance_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling BalancesApi->get_balance: #{e}"
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

