package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class ModelsExchangeTimeseriesItem {
    /* The start time of the time period. */
    Date timePeriodStart
    /* The end time of the time period. */
    Date timePeriodEnd
    /* The time when the price opened. */
    Date timeOpen
    /* The time when the price closed. */
    Date timeClose
    /* The opening price. */
    Double priceOpen
    /* The highest price during the time period. */
    Double priceHigh
    /* The lowest price during the time period. */
    Double priceLow
    /* The closing price. */
    Double priceClose
    /* The total volume traded during the time period. This could be zero if there was not transactions and there was only orderbook activity. */
    Double volumeTraded
    /* The number of trades executed during the time period. This could be zero if there was not transactions and there was only orderbook activity. */
    Long tradesCount
    
    String symbolIdExchange
    
    String symbolIdCoinapi
}
