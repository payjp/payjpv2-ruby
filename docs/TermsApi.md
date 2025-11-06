# PAYJPv2::TermsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_term**](TermsApi.md#get_all_term) | **GET** /v2/terms | Get All Term |
| [**retrieve_term**](TermsApi.md#retrieve_term) | **GET** /v2/terms/{term_id} | Retrieve Term |


## get_all_term

> <TermListResponse> get_all_term(opts)

Get All Term

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

api_instance = PAYJPv2::TermsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  offset: 56, # Integer | データ取得を行う開始位置
  since_start_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | start_atが指定した日付以降のデータを取得
  until_start_at: Time.parse('2013-10-20T19:20:30+01:00') # Time | start_atが指定した日付以前のデータを取得
}

begin
  # Get All Term
  result = api_instance.get_all_term(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TermsApi->get_all_term: #{e}"
end
```

#### Using the get_all_term_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TermListResponse>, Integer, Hash)> get_all_term_with_http_info(opts)

```ruby
begin
  # Get All Term
  data, status_code, headers = api_instance.get_all_term_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TermListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TermsApi->get_all_term_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **offset** | **Integer** | データ取得を行う開始位置 | [optional][default to 0] |
| **since_start_at** | **Time** | start_atが指定した日付以降のデータを取得 | [optional] |
| **until_start_at** | **Time** | start_atが指定した日付以前のデータを取得 | [optional] |

### Return type

[**TermListResponse**](TermListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## retrieve_term

> <TermResponse> retrieve_term(term_id)

Retrieve Term

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

api_instance = PAYJPv2::TermsApi.new
term_id = 'term_id_example' # String | 

begin
  # Retrieve Term
  result = api_instance.retrieve_term(term_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TermsApi->retrieve_term: #{e}"
end
```

#### Using the retrieve_term_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TermResponse>, Integer, Hash)> retrieve_term_with_http_info(term_id)

```ruby
begin
  # Retrieve Term
  data, status_code, headers = api_instance.retrieve_term_with_http_info(term_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TermResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TermsApi->retrieve_term_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term_id** | **String** |  |  |

### Return type

[**TermResponse**](TermResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

