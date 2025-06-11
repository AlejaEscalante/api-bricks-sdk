# FinFeedApiStockRestApi.OhlcvApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OhlcvExchangeExchangeIdHistoryGet**](OhlcvApi.md#v1OhlcvExchangeExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange
[**v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data
[**v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data
[**v1OhlcvPeriodsGet**](OhlcvApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods



## v1OhlcvExchangeExchangeIdHistoryGet

> [OHLCVExchangeTimeseriesItem] v1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange.

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.OhlcvApi();
let exchangeId = "exchangeId_example"; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
let periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
let timeStart = "timeStart_example"; // String | Timeseries starting time in ISO 8601
let timeEnd = "timeEnd_example"; // String | Timeseries ending time in ISO 8601
apiInstance.v1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | 

### Return type

[**[OHLCVExchangeTimeseriesItem]**](OHLCVExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet

> [OHLCVTimeseriesItem] v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, opts)

Historical data

Get OHLCV timeseries data returned in time ascending order.

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.OhlcvApi();
let exchangeId = "exchangeId_example"; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
let symbolId = "symbolId_example"; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
let periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
let opts = {
  'timeStart': "timeStart_example", // String | Timeseries starting time in ISO 8601
  'timeEnd': "timeEnd_example", // String | Timeseries ending time in ISO 8601
  'limit': 100 // Number | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **Number**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**[OHLCVTimeseriesItem]**](OHLCVTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet

> [OHLCVTimeseriesItem] v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, opts)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.OhlcvApi();
let exchangeId = "exchangeId_example"; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
let symbolId = "symbolId_example"; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
let periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
let opts = {
  'limit': 100 // Number | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **limit** | **Number**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**[OHLCVTimeseriesItem]**](OHLCVTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1OhlcvPeriodsGet

> [OHLCVTimeseriesPeriod] v1OhlcvPeriodsGet()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.OhlcvApi();
apiInstance.v1OhlcvPeriodsGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[OHLCVTimeseriesPeriod]**](OHLCVTimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

