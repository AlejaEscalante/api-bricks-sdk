# OhlcvApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OhlcvExchangesExchangeIdHistoryGet**](OhlcvApi.md#V1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**V1OhlcvPeriodsGet**](OhlcvApi.md#V1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods
[**V1OhlcvSymbolIdHistoryGet**](OhlcvApi.md#V1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**V1OhlcvSymbolIdLatestGet**](OhlcvApi.md#V1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data


# **V1OhlcvExchangesExchangeIdHistoryGet**
> array[ModelsExchangeTimeseriesItem] V1OhlcvExchangesExchangeIdHistoryGet(exchange_id, period_id, time_start, time_end)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::

### Example
```R
library(openapi)

# Historical data by exchange
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
var_time_start <- "time_start_example" # character | Timeseries starting time in ISO 8601
var_time_end <- "time_end_example" # character | Timeseries ending time in ISO 8601

api_instance <- OhlcvApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OhlcvExchangesExchangeIdHistoryGet(var_exchange_id, var_period_id, var_time_start, var_time_enddata_file = "result.txt")
result <- api_instance$V1OhlcvExchangesExchangeIdHistoryGet(var_exchange_id, var_period_id, var_time_start, var_time_end)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **time_start** | **character**| Timeseries starting time in ISO 8601 | 
 **time_end** | **character**| Timeseries ending time in ISO 8601 | 

### Return type

[**array[ModelsExchangeTimeseriesItem]**](Models.ExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1OhlcvPeriodsGet**
> array[V1TimeseriesPeriod] V1OhlcvPeriodsGet()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example
```R
library(openapi)

# List all periods
#

api_instance <- OhlcvApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OhlcvPeriodsGet(data_file = "result.txt")
result <- api_instance$V1OhlcvPeriodsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[V1TimeseriesPeriod]**](v1.TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1OhlcvSymbolIdHistoryGet**
> array[V1TimeseriesItem] V1OhlcvSymbolIdHistoryGet(symbol_id, period_id, time_start = var.time_start, time_end = var.time_end, limit = 100, include_empty_items = FALSE)

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```R
library(openapi)

# Historical data
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
var_time_start <- "time_start_example" # character | Timeseries starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Timeseries ending time in ISO 8601 (Optional)
var_limit <- 100 # integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)
var_include_empty_items <- FALSE # character | Include items with no activity? (default value is `false`, possible values are `true` or `false`) (Optional)

api_instance <- OhlcvApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OhlcvSymbolIdHistoryGet(var_symbol_id, var_period_id, time_start = var_time_start, time_end = var_time_end, limit = var_limit, include_empty_items = var_include_empty_itemsdata_file = "result.txt")
result <- api_instance$V1OhlcvSymbolIdHistoryGet(var_symbol_id, var_period_id, time_start = var_time_start, time_end = var_time_end, limit = var_limit, include_empty_items = var_include_empty_items)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **time_start** | **character**| Timeseries starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **integer**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **include_empty_items** | **character**| Include items with no activity? (default value is &#x60;false&#x60;, possible values are &#x60;true&#x60; or &#x60;false&#x60;) | [optional] [default to FALSE]

### Return type

[**array[V1TimeseriesItem]**](v1.TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1OhlcvSymbolIdLatestGet**
> array[V1TimeseriesItem] V1OhlcvSymbolIdLatestGet(symbol_id, period_id, limit = 100, include_empty_items = FALSE)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```R
library(openapi)

# Latest data
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
var_limit <- 100 # integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)
var_include_empty_items <- FALSE # character | Include items with no activity? (default value is `false`, possible values are `true` or `false`) (Optional)

api_instance <- OhlcvApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OhlcvSymbolIdLatestGet(var_symbol_id, var_period_id, limit = var_limit, include_empty_items = var_include_empty_itemsdata_file = "result.txt")
result <- api_instance$V1OhlcvSymbolIdLatestGet(var_symbol_id, var_period_id, limit = var_limit, include_empty_items = var_include_empty_items)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **limit** | **integer**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **include_empty_items** | **character**| Include items with no activity? (default value is &#x60;false&#x60;, possible values are &#x60;true&#x60; or &#x60;false&#x60;) | [optional] [default to FALSE]

### Return type

[**array[V1TimeseriesItem]**](v1.TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

