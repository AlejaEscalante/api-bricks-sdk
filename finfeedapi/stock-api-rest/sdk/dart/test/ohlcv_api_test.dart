//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for OhlcvApi
void main() {
  // final instance = OhlcvApi();

  group('tests for OhlcvApi', () {
    // Historical data by exchange
    //
    // Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange.
    //
    //Future<List<OHLCVExchangeTimeseriesItem>> v1OhlcvExchangeExchangeIdHistoryGet(String exchangeId, String periodId, String timeStart, String timeEnd) async
    test('test v1OhlcvExchangeExchangeIdHistoryGet', () async {
      // TODO
    });

    // Historical data
    //
    // Get OHLCV timeseries data returned in time ascending order.
    //
    //Future<List<OHLCVTimeseriesItem>> v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(String exchangeId, String symbolId, String periodId, { String timeStart, String timeEnd, int limit }) async
    test('test v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet', () async {
      // TODO
    });

    // Latest data
    //
    // Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
    //
    //Future<List<OHLCVTimeseriesItem>> v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(String exchangeId, String symbolId, String periodId, { int limit }) async
    test('test v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet', () async {
      // TODO
    });

    // List all periods
    //
    // Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
    //
    //Future<List<OHLCVTimeseriesPeriod>> v1OhlcvPeriodsGet() async
    test('test v1OhlcvPeriodsGet', () async {
      // TODO
    });

  });
}
