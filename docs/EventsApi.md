# PAYJPv2::EventsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_events**](EventsApi.md#get_all_events) | **GET** /v2/events | Get All Events |
| [**get_event**](EventsApi.md#get_event) | **GET** /v2/events/{event_id} | Get Event |


## get_all_events

> <EventListResponse> get_all_events(opts)

Get All Events

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PAYJPv2::EventsApi.new
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定した日付以降のデータを取得
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定した日付以前のデータを取得
  limit: 56, # Integer | 取得するデータの最大件数
  offset: 56, # Integer | データ取得を行う開始位置
  resource_id: 'resource_id_example', # String | 取得するeventに紐づくAPIリソースのID (e.g. customer.id)
  object: 'object_example', # String | 取得するeventに紐づくAPIリソースのobject。値はリソース名(e.g. customer, payment_intent)
  type: 'type_example' # String | 取得するeventのtype
}

begin
  # Get All Events
  result = api_instance.get_all_events(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling EventsApi->get_all_events: #{e}"
end
```

#### Using the get_all_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventListResponse>, Integer, Hash)> get_all_events_with_http_info(opts)

```ruby
begin
  # Get All Events
  data, status_code, headers = api_instance.get_all_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling EventsApi->get_all_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** | 指定した日付以降のデータを取得 | [optional] |
| **_until** | **Time** | 指定した日付以前のデータを取得 | [optional] |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **offset** | **Integer** | データ取得を行う開始位置 | [optional][default to 0] |
| **resource_id** | **String** | 取得するeventに紐づくAPIリソースのID (e.g. customer.id) | [optional] |
| **object** | **String** | 取得するeventに紐づくAPIリソースのobject。値はリソース名(e.g. customer, payment_intent) | [optional] |
| **type** | **String** | 取得するeventのtype | [optional] |

### Return type

[**EventListResponse**](EventListResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_event

> <EventResponse> get_event(event_id)

Get Event

### Examples

```ruby
require 'time'
require 'payjpv2'
# setup authorization
PAYJPv2.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PAYJPv2::EventsApi.new
event_id = 'event_id_example' # String | 

begin
  # Get Event
  result = api_instance.get_event(event_id)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling EventsApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> get_event_with_http_info(event_id)

```ruby
begin
  # Get Event
  data, status_code, headers = api_instance.get_event_with_http_info(event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling EventsApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

