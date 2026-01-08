# PAYJPv2::TermsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_terms**](TermsApi.md#get_all_terms) | **GET** /v2/terms | Get All Terms |
| [**get_term**](TermsApi.md#get_term) | **GET** /v2/terms/{term_id} | Get Term |


## get_all_terms

> <TermListResponse> get_all_terms(opts)

Get All Terms

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
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example', # String | このIDより前のデータを取得
  since_start_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | start_at が指定した日付以降のデータを取得
  until_start_at: Time.parse('2013-10-20T19:20:30+01:00') # Time | start_at が指定した日付以前のデータを取得
}

begin
  # Get All Terms
  result = api_instance.get_all_terms(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TermsApi->get_all_terms: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Terms
  data, status_code, headers = api_instance.get_all_terms(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TermListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TermsApi->get_all_terms: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |
| **since_start_at** | **Time** | start_at が指定した日付以降のデータを取得 | [optional] |
| **until_start_at** | **Time** | start_at が指定した日付以前のデータを取得 | [optional] |

### Return type

[**TermListResponse**](TermListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_term

> <TermResponse> get_term(term_id)

Get Term

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
  # Get Term
  result = api_instance.get_term(term_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling TermsApi->get_term: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Term
  data, status_code, headers = api_instance.get_term(term_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TermResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling TermsApi->get_term: #{e}"
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

