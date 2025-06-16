# QuotesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1QuotesCurrentGet**](QuotesApi.md#v1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data |
| [**v1QuotesLatestGet**](QuotesApi.md#v1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data |
| [**v1QuotesSymbolIdCurrentGet**](QuotesApi.md#v1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol |
| [**v1QuotesSymbolIdHistoryGet**](QuotesApi.md#v1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data |
| [**v1QuotesSymbolIdLatestGet**](QuotesApi.md#v1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol |


<a id="v1QuotesCurrentGet"></a>
# **v1QuotesCurrentGet**
> kotlin.collections.List&lt;V1QuoteTrade&gt; v1QuotesCurrentGet(filterSymbolId)

Current data

Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = QuotesApi()
val filterSymbolId : kotlin.String = filterSymbolId_example // kotlin.String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
try {
    val result : kotlin.collections.List<V1QuoteTrade> = apiInstance.v1QuotesCurrentGet(filterSymbolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling QuotesApi#v1QuotesCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling QuotesApi#v1QuotesCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterSymbolId** | **kotlin.String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1QuoteTrade&gt;**](V1QuoteTrade.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1QuotesLatestGet"></a>
# **v1QuotesLatestGet**
> kotlin.collections.List&lt;V1Quote&gt; v1QuotesLatestGet(filterSymbolId, limit)

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = QuotesApi()
val filterSymbolId : kotlin.String = filterSymbolId_example // kotlin.String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1Quote> = apiInstance.v1QuotesLatestGet(filterSymbolId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling QuotesApi#v1QuotesLatestGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling QuotesApi#v1QuotesLatestGet")
    e.printStackTrace()
}
```

### Parameters
| **filterSymbolId** | **kotlin.String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1Quote&gt;**](V1Quote.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1QuotesSymbolIdCurrentGet"></a>
# **v1QuotesSymbolIdCurrentGet**
> V1QuoteTrade v1QuotesSymbolIdCurrentGet(symbolId)

Current quotes for a specific symbol

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = QuotesApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | The symbol identifier (from the Metadata -> Symbols)
try {
    val result : V1QuoteTrade = apiInstance.v1QuotesSymbolIdCurrentGet(symbolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling QuotesApi#v1QuotesSymbolIdCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling QuotesApi#v1QuotesSymbolIdCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String**| The symbol identifier (from the Metadata -&gt; Symbols) | |

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1QuotesSymbolIdHistoryGet"></a>
# **v1QuotesSymbolIdHistoryGet**
> kotlin.collections.List&lt;V1Quote&gt; v1QuotesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit)

Historical data

Get historical quote updates within requested time range, returned in time ascending order.  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = QuotesApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
val date : kotlin.String = date_example // kotlin.String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Starting time in ISO 8601
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1Quote> = apiInstance.v1QuotesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling QuotesApi#v1QuotesSymbolIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling QuotesApi#v1QuotesSymbolIdHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| **symbolId** | **kotlin.String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **date** | **kotlin.String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] |
| **timeStart** | **kotlin.String**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **kotlin.String**| Timeseries ending time in ISO 8601 | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1Quote&gt;**](V1Quote.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1QuotesSymbolIdLatestGet"></a>
# **v1QuotesSymbolIdLatestGet**
> kotlin.collections.List&lt;V1Quote&gt; v1QuotesSymbolIdLatestGet(symbolId, limit)

Latest quote updates for a specific symbol

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = QuotesApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1Quote> = apiInstance.v1QuotesSymbolIdLatestGet(symbolId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling QuotesApi#v1QuotesSymbolIdLatestGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling QuotesApi#v1QuotesSymbolIdLatestGet")
    e.printStackTrace()
}
```

### Parameters
| **symbolId** | **kotlin.String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1Quote&gt;**](V1Quote.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

