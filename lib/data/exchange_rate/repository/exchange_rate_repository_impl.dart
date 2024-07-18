import 'dart:convert';

import 'package:repository/data/core/app_service_endpoints.dart';
import 'package:repository/data/exchange_rate/model/exchange_rate/exchange_rate_response_model.dart';
import 'package:repository/data/exchange_rate/model/exchange_rate/exchange_rate_request_model.dart';
import 'package:repository/data/exchange_rate/model/exchange_rate_history_list/exchange_rate_history_list_request_model.dart';
import 'package:repository/data/exchange_rate/model/exchange_rate_history_list/exchange_rate_history_list_response_model.dart';
import 'package:repository/data/exchange_rate/repository/mapping/exchange_rate_history_response_mapping.dart';
import 'package:repository/data/exchange_rate/repository/mapping/exchange_rate_request_model.dart';
import 'package:repository/data/exchange_rate/repository/mapping/exchange_rate_response_mapping.dart';
import 'package:repository/domain/exchange_rate/enetities/rate_calculation_result.dart';
import 'package:repository/domain/exchange_rate/enetities/rate_history_result.dart';
import 'package:repository/repository.dart';

class ExchangeRateRepositoryImpl implements ExchangeRateRepository {
  ExchangeRateRepositoryImpl({required this.networkClient});

  NetworkClient networkClient;

  @override
  Future<Either<Exception, RateCalculateResult>> calculateRate(RateCalculateInfo data) async {
    final requestData = data.toRequestData();
    final queryParameters = requestData.toJson();

    try {
      final response = await networkClient.get(AppServiceEndpoints.exchangeRate, queryParameters: queryParameters);
      final responseJson = json.decode(response.asString);
      final exchangeRateResponse = ExchangeRateResponseModel.fromJson(responseJson);
      return Right(exchangeRateResponse.toDomain(data.calculationMode));
    } on Exception catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<Exception, String>> getExchangeRateList() async {
    final requestData = ExchangeRateRequestModel();
    final queryParameters = requestData.toJson();

    try {
      final _ = await networkClient.get(AppServiceEndpoints.exchangeRateList, queryParameters: queryParameters);
      return const Right("success");
    } on Exception catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<Exception, RateHistoryResult>> getExchangeRateHistoryList(
      ExchangeRateHistoryListRequestModel requestModel) async {
    final queryParameters = requestModel.toJson();

    try {
      final response =
          await networkClient.get(AppServiceEndpoints.exchangeRateHistoryList, queryParameters: queryParameters);
      final responseJson = json.decode(response.asString);
      final exchangeRateHistoryListResponse = ExchangeRateHistoryListResponseModel.fromJson(responseJson);
      return Right(exchangeRateHistoryListResponse.toDomain());
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
