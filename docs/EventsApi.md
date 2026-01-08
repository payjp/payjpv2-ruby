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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PAYJPv2::EventsApi.new
opts = {
  limit: 56, # Integer | 取得するデータの最大件数
  starting_after: 'starting_after_example', # String | このIDより後のデータを取得
  ending_before: 'ending_before_example', # String | このIDより前のデータを取得
  resource_id: 'resource_id_example', # String | 取得する event に紐づく API リソースの ID
  object: 'object_example', # String | 取得する event に紐づく API リソースの object。値はリソース名 (e.g. customer, payment_flow)
  type: 'type_example' # String | 取得する event の type
}

begin
  # Get All Events
  result = api_instance.get_all_events(opts)
  p result
rescue PAYJPv2::ApiError => e
  puts "Error when calling EventsApi->get_all_events: #{e}"
end
```

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get All Events
  data, status_code, headers = api_instance.get_all_events(opts.merge(include_http_info: true))
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventListResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling EventsApi->get_all_events: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | 取得するデータの最大件数 | [optional][default to 10] |
| **starting_after** | **String** | このIDより後のデータを取得 | [optional] |
| **ending_before** | **String** | このIDより前のデータを取得 | [optional] |
| **resource_id** | **String** | 取得する event に紐づく API リソースの ID | [optional] |
| **object** | **String** | 取得する event に紐づく API リソースの object。値はリソース名 (e.g. customer, payment_flow) | [optional] |
| **type** | **String** | 取得する event の type | [optional] |

### Return type

[**EventListResponse**](EventListResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

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
  # Configure HTTP basic authorization: HTTPBasic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

#### Using the include_http_info option

To get response data along with status code and headers, use the `include_http_info: true` option.

```ruby
begin
  # Get Event
  data, status_code, headers = api_instance.get_event(event_id, { include_http_info: true })
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue PAYJPv2::ApiError => e
  puts "Error when calling EventsApi->get_event: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic), [HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

