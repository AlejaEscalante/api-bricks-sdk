# METADATA_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_assets_asset_id_get**](METADATA_API.md#v1_assets_asset_id_get) | **Get** /v1/assets/{asset_id} | List all assets by asset ID
[**v1_assets_get**](METADATA_API.md#v1_assets_get) | **Get** /v1/assets | List all assets
[**v1_assets_icons_size_get**](METADATA_API.md#v1_assets_icons_size_get) | **Get** /v1/assets/icons/{size} | List all asset icons
[**v1_chains_chain_id_get**](METADATA_API.md#v1_chains_chain_id_get) | **Get** /v1/chains/{chain_id} | List all chains by chain ID
[**v1_chains_get**](METADATA_API.md#v1_chains_get) | **Get** /v1/chains | List all blockchain chains
[**v1_exchanges_exchange_id_get**](METADATA_API.md#v1_exchanges_exchange_id_get) | **Get** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**v1_exchanges_get**](METADATA_API.md#v1_exchanges_get) | **Get** /v1/exchanges | List all exchanges
[**v1_exchanges_icons_size_get**](METADATA_API.md#v1_exchanges_icons_size_get) | **Get** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**v1_symbols_exchange_id_get**](METADATA_API.md#v1_symbols_exchange_id_get) | **Get** /v1/symbols/{exchange_id} | List of symbols for the exchange
[**v1_symbols_get**](METADATA_API.md#v1_symbols_get) | **Get** /v1/symbols | List all symbols
[**v1_symbols_map_exchange_id_get**](METADATA_API.md#v1_symbols_map_exchange_id_get) | **Get** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange


# **v1_assets_asset_id_get**
> v1_assets_asset_id_get (asset_id: STRING_32 ): detachable LIST [V1_ASSET]


List all assets by asset ID


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **STRING_32**| The asset ID. | [default to null]

### Return type

[**LIST [V1_ASSET]**](v1.Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_get**
> v1_assets_get (filter_asset_id:  detachable STRING_32 ): detachable LIST [V1_ASSET]


List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **STRING_32**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] [default to null]

### Return type

[**LIST [V1_ASSET]**](v1.Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_icons_size_get**
> v1_assets_icons_size_get (size: INTEGER_32 ): detachable LIST [V1_ICON]


List all asset icons

Gets the list of icons (of the given size) for all the assets.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **INTEGER_32**| The size of the icons. | [default to null]

### Return type

[**LIST [V1_ICON]**](v1.Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_chains_chain_id_get**
> v1_chains_chain_id_get (chain_id: STRING_32 ): detachable LIST [V1_CHAIN]


List all chains by chain ID


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| The chain ID. | [default to null]

### Return type

[**LIST [V1_CHAIN]**](v1.Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_chains_get**
> v1_chains_get (filter_chain_id:  detachable STRING_32 ): detachable LIST [V1_CHAIN]


List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_chain_id** | **STRING_32**| Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional] [default to null]

### Return type

[**LIST [V1_CHAIN]**](v1.Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_exchange_id_get**
> v1_exchanges_exchange_id_get (exchange_id: STRING_32 ): detachable LIST [V1_EXCHANGE]


List all exchanges by exchange_id


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| The ID of the exchange. | [default to null]

### Return type

[**LIST [V1_EXCHANGE]**](v1.Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_get**
> v1_exchanges_get (filter_exchange_id:  detachable STRING_32 ): detachable LIST [V1_EXCHANGE]


List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **STRING_32**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] [default to null]

### Return type

[**LIST [V1_EXCHANGE]**](v1.Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_icons_size_get**
> v1_exchanges_icons_size_get (size: INTEGER_32 ): detachable LIST [V1_ICON]


List of icons for the exchanges


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **INTEGER_32**| The size of the icons. | [default to null]

### Return type

[**LIST [V1_ICON]**](v1.Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_exchange_id_get**
> v1_symbols_exchange_id_get (exchange_id: STRING_32 ; filter_symbol_id:  detachable STRING_32 ; filter_asset_id:  detachable STRING_32 ): detachable LIST [V1_SYMBOL]


List of symbols for the exchange


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| The ID of the exchange (from the Metadata -&gt; Exchanges) | [default to null]
 **filter_symbol_id** | **STRING_32**| The filter for symbol ID. | [optional] [default to null]
 **filter_asset_id** | **STRING_32**| The filter for asset ID. | [optional] [default to null]

### Return type

[**LIST [V1_SYMBOL]**](v1.Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_get**
> v1_symbols_get (filter_symbol_id:  detachable STRING_32 ; filter_exchange_id:  detachable STRING_32 ; filter_asset_id:  detachable STRING_32 ): detachable LIST [V1_SYMBOL]


List all symbols

Retrieves all symbols with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **STRING_32**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] [default to null]
 **filter_exchange_id** | **STRING_32**| The filter for exchange ID. | [optional] [default to null]
 **filter_asset_id** | **STRING_32**| The filter for asset ID. | [optional] [default to null]

### Return type

[**LIST [V1_SYMBOL]**](v1.Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_map_exchange_id_get**
> v1_symbols_map_exchange_id_get (exchange_id: STRING_32 ): detachable LIST [V1_SYMBOL_MAPPING]


List symbol mapping for the exchange


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| The ID of the exchange (from the Metadata -&gt; Exchanges) | [default to null]

### Return type

[**LIST [V1_SYMBOL_MAPPING]**](v1.SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

