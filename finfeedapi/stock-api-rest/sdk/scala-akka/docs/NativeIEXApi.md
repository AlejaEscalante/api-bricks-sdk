# NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1NativeIexAdminMessagesSymbolGetWithHttpInfo**](NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGetWithHttpInfo) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1NativeIexAdminSystemEventGet**](NativeIEXApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1NativeIexAdminSystemEventGetWithHttpInfo**](NativeIEXApi.md#v1NativeIexAdminSystemEventGetWithHttpInfo) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1NativeIexLevel1QuoteSymbolGetWithHttpInfo**](NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGetWithHttpInfo) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo**](NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1NativeIexLevel3OrderBookSymbolGetWithHttpInfo**](NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGetWithHttpInfo) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1NativeIexTradeSymbolGet**](NativeIEXApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades
[**v1NativeIexTradeSymbolGetWithHttpInfo**](NativeIEXApi.md#v1NativeIexTradeSymbolGetWithHttpInfo) | **GET** /v1/native/iex/trade/{symbol} | Get Trades



## v1NativeIexAdminMessagesSymbolGet

> v1NativeIexAdminMessagesSymbolGet(v1NativeIexAdminMessagesSymbolGetRequest): ApiRequest[Seq[AdminMessageModel]]

Get Admin Messages

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = NativeIEXApi("https://api-historical.stock.finfeedapi.com")
    val symbol: String = symbol_example // String | The symbol identifier

    val date: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    
    val request = apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, date)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexAdminMessagesSymbolGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexAdminMessagesSymbolGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier |
 **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) |

### Return type

ApiRequest[[**Seq[AdminMessageModel]**](AdminMessageModel.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1NativeIexAdminSystemEventGet

> v1NativeIexAdminSystemEventGet(v1NativeIexAdminSystemEventGetRequest): ApiRequest[Seq[SystemEventModel]]

Get System Events

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = NativeIEXApi("https://api-historical.stock.finfeedapi.com")
    val date: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Date in format YYYY-MM-DD
    
    val request = apiInstance.v1NativeIexAdminSystemEventGet(date)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexAdminSystemEventGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexAdminSystemEventGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **OffsetDateTime**| Date in format YYYY-MM-DD |

### Return type

ApiRequest[[**Seq[SystemEventModel]**](SystemEventModel.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1NativeIexLevel1QuoteSymbolGet

> v1NativeIexLevel1QuoteSymbolGet(v1NativeIexLevel1QuoteSymbolGetRequest): ApiRequest[Seq[QuoteUpdateModel]]

Get Level-1 Quotes

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = NativeIEXApi("https://api-historical.stock.finfeedapi.com")
    val symbol: String = symbol_example // String | The symbol identifier

    val date: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    
    val request = apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, date)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel1QuoteSymbolGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel1QuoteSymbolGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier |
 **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) |

### Return type

ApiRequest[[**Seq[QuoteUpdateModel]**](QuoteUpdateModel.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1NativeIexLevel2PriceLevelUpdateSymbolGet

> v1NativeIexLevel2PriceLevelUpdateSymbolGet(v1NativeIexLevel2PriceLevelUpdateSymbolGetRequest): ApiRequest[Seq[PriceLevelUpdateModel]]

Get Level-2 Price Level Book

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = NativeIEXApi("https://api-historical.stock.finfeedapi.com")
    val symbol: String = symbol_example // String | The symbol identifier

    val date: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    
    val request = apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier |
 **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) |

### Return type

ApiRequest[[**Seq[PriceLevelUpdateModel]**](PriceLevelUpdateModel.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1NativeIexLevel3OrderBookSymbolGet

> v1NativeIexLevel3OrderBookSymbolGet(v1NativeIexLevel3OrderBookSymbolGetRequest): ApiRequest[Seq[OrderBookModel]]

Get Level-3 Order Book

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = NativeIEXApi("https://api-historical.stock.finfeedapi.com")
    val symbol: String = symbol_example // String | The symbol identifier

    val date: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    
    val request = apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel3OrderBookSymbolGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel3OrderBookSymbolGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier |
 **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) |

### Return type

ApiRequest[[**Seq[OrderBookModel]**](OrderBookModel.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1NativeIexTradeSymbolGet

> v1NativeIexTradeSymbolGet(v1NativeIexTradeSymbolGetRequest): ApiRequest[Seq[TradeModel]]

Get Trades

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = NativeIEXApi("https://api-historical.stock.finfeedapi.com")
    val symbol: String = symbol_example // String | The symbol identifier

    val date: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    
    val request = apiInstance.v1NativeIexTradeSymbolGet(symbol, date)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexTradeSymbolGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling NativeIEXApi#v1NativeIexTradeSymbolGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier |
 **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) |

### Return type

ApiRequest[[**Seq[TradeModel]**](TradeModel.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

