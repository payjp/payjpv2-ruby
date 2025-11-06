# PAYJPv2::StatementsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_statement_url**](StatementsApi.md#create_statement_url) | **POST** /v2/statements/{statement_id}/statement_urls | Create Statement Url |
| [**get_all_statements**](StatementsApi.md#get_all_statements) | **GET** /v2/statements | Get All Statements |
| [**retrieve_statement**](StatementsApi.md#retrieve_statement) | **GET** /v2/statements/{statement_id} | Retrieve Statement |


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

#### Using the create_statement_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementURLResponse>, Integer, Hash)> create_statement_url_with_http_info(statement_id)

```ruby
begin
  # Create Statement Url
  data, status_code, headers = api_instance.create_statement_url_with_http_info(statement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementURLResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->create_statement_url_with_http_info: #{e}"
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
  owner: 'owner_example', # String | オーナータイプでフィルタ (merchant または tenant)
  source_transfer: 'source_transfer_example', # String | 送金元IDでフィルタ
  tenant: 'tenant_example', # String | テナントIDでフィルタ
  type: PAYJPv2::StatementType::SALES, # StatementType | 明細タイプでフィルタ
  term: 'term_example' # String | 期間IDでフィルタ
}

begin
  # Get All Statements
  result = api_instance.get_all_statements(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->get_all_statements: #{e}"
end
```

#### Using the get_all_statements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementListResponse>, Integer, Hash)> get_all_statements_with_http_info(opts)

```ruby
begin
  # Get All Statements
  data, status_code, headers = api_instance.get_all_statements_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->get_all_statements_with_http_info: #{e}"
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
| **owner** | **String** | オーナータイプでフィルタ (merchant または tenant) | [optional] |
| **source_transfer** | **String** | 送金元IDでフィルタ | [optional] |
| **tenant** | **String** | テナントIDでフィルタ | [optional] |
| **type** | [**StatementType**](.md) | 明細タイプでフィルタ | [optional] |
| **term** | **String** | 期間IDでフィルタ | [optional] |

### Return type

[**StatementListResponse**](StatementListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## retrieve_statement

> <StatementResponse> retrieve_statement(statement_id)

Retrieve Statement

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
  # Retrieve Statement
  result = api_instance.retrieve_statement(statement_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->retrieve_statement: #{e}"
end
```

#### Using the retrieve_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementResponse>, Integer, Hash)> retrieve_statement_with_http_info(statement_id)

```ruby
begin
  # Retrieve Statement
  data, status_code, headers = api_instance.retrieve_statement_with_http_info(statement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling StatementsApi->retrieve_statement_with_http_info: #{e}"
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

