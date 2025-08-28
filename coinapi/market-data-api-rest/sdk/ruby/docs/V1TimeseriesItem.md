# OpenapiClient::V1TimeseriesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_period_start** | **Time** | The start time of the time period. | [optional] |
| **time_period_end** | **Time** | The end time of the time period. | [optional] |
| **time_open** | **Time** | The time when the price opened. | [optional] |
| **time_close** | **Time** | The time when the price closed. | [optional] |
| **price_open** | **Float** | The opening price. | [optional] |
| **price_high** | **Float** | The highest price during the time period. | [optional] |
| **price_low** | **Float** | The lowest price during the time period. | [optional] |
| **price_close** | **Float** | The closing price. | [optional] |
| **volume_traded** | **Float** | The total volume traded during the time period. This could be zero if there was not transactions and there was only orderbook activity. | [optional] |
| **trades_count** | **Integer** | The number of trades executed during the time period. This could be zero if there was not transactions and there was only orderbook activity. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1TimeseriesItem.new(
  time_period_start: null,
  time_period_end: null,
  time_open: null,
  time_close: null,
  price_open: null,
  price_high: null,
  price_low: null,
  price_close: null,
  volume_traded: null,
  trades_count: null
)
```

