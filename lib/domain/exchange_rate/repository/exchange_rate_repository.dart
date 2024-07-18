import 'package:either_dart/either.dart';
import 'package:repository/data/exchange_rate/model/exchange_rate_history_list/exchange_rate_history_list_request_model.dart';
import 'package:repository/domain/exchange_rate/enetities/rate_calculate_info.dart';
import 'package:repository/domain/exchange_rate/enetities/rate_calculation_result.dart';
import 'package:repository/domain/exchange_rate/enetities/rate_history_result.dart';

abstract class ExchangeRateRepository {
  Future<Either<Exception, RateCalculateResult>> calculateRate(RateCalculateInfo data);
  Future<Either<Exception, String>> getExchangeRateList();
  Future<Either<Exception, RateHistoryResult>> getExchangeRateHistoryList(ExchangeRateHistoryListRequestModel requestModel);
}
