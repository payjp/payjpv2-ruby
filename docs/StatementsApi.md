# PAYJPv2::StatementsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_statement_url**](StatementsApi.md#create_statement_url) | **POST** /v2/statements/{statement_id}/statement_urls | Create Statement Url |
| [**get_all_statements**](StatementsApi.md#get_all_statements) | **GET** /v2/statements | Get All Statements |
| [**get_statement**](StatementsApi.md#get_statement) | **GET** /v2/statements/{statement_id} | Get Statement |


## create_statement_url

> <StatementURLResponse> create_statement_url(statement_id)

Create Statement Url

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

api_instance = PAYJPv2::StatementsApi.new
statement_id = 'statement_id_example' # String | 

begin
  # Create Statement Url
  result = api_instance.create_statement_url(statement_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->create_statement_url: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Create Statement Url
  data, status_code, headers = api_instance.create_statement_url(statement_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementURLResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->create_statement_url: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statement_id** | **String** |  |  |

### Return type

[**StatementURLResponse**](StatementURLResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_all_statements

> <StatementListResponse> get_all_statements(opts)

Get All Statements

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

api_instance = PAYJPv2::StatementsApi.new
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定した日付以降のデータを取得
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定した日付以前のデータを取得
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example', # String | このIDより前のデータを取得
  type: PAYJPv2::StatementType::SALES, # StatementType | 明細タイプでフィルタ
  term_id: 'term_id_example' # String | 集計区間 ID でフィルタ
}

begin
  # Get All Statements
  result = api_instance.get_all_statements(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->get_all_statements: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Statements
  data, status_code, headers = api_instance.get_all_statements(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->get_all_statements: #{e}"
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
| **type** | [**StatementType**](.md) | 明細タイプでフィルタ | [optional] |
| **term_id** | **String** | 集計区間 ID でフィルタ | [optional] |

### Return type

[**StatementListResponse**](StatementListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_statement

> <StatementResponse> get_statement(statement_id)

Get Statement

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

api_instance = PAYJPv2::StatementsApi.new
statement_id = 'statement_id_example' # String | 

begin
  # Get Statement
  result = api_instance.get_statement(statement_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->get_statement: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Statement
  data, status_code, headers = api_instance.get_statement(statement_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->get_statement: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statement_id** | **String** |  |  |

### Return type

[**StatementResponse**](StatementResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

