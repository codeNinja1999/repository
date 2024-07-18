import 'package:repository/data/exchange_rate/model/exchange_rate_history_list/exchange_rate_history_list_response_model.dart';
import 'package:repository/domain/exchange_rate/enetities/rate_history_result.dart';

T? tryCast<T>(dynamic object) => object is T ? object : null;

extension ExchangeRateHistoryResponseMapping on ExchangeRateHistoryListResponseModel {
  RateHistoryResult toDomain() {
    return RateHistoryResult(
      dateFilter: dateFilter,
      country: country,
      rateHistoryList:
          (resultList != []) ? resultList?.map((e) => RateHistory(date: e.updateDate, rate: e.rate)).toList() : [],
      countryCode: countryCode,
      baseCurrencyCode: baseCurrencyCode,
      counterCurrencyCode: counterCurrencyCode,
      maxValue: maxValue,
      minValue: minValue,
      interval: interval,
    );
  }
}
