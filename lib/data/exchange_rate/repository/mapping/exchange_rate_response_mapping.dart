import 'package:repository/data/exchange_rate/model/exchange_rate/exchange_rate_response_model.dart';
import 'package:repository/domain/exchange_rate/enetities/rate_calculation_result.dart';
import 'package:repository/repository.dart';

extension ExchangeRateResponseMapping on ExchangeRateResponseModel {
  RateCalculateResult toDomain(CalculationMode calculationMode) {
    return RateCalculateResult(
      currentRate: exchangeRate ?? "",
      currency: receivingCurrencyCode ?? "",
      remittedAmount: remittanceAmount ?? "",
      estimatedReceivingAmount: estimatedReceivingAmount ?? "",
      calculationMode: calculationMode,
      serviceFee: "$remittanceFee",
      totalAmountToPay: totalAmount ?? "",
    );
  }
}
