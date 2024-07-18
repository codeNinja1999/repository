import 'package:repository/domain/exchange_rate/enetities/calculate_mode.dart';
import 'package:repository/domain/exchange_rate/enetities/rate_calculate_source_info.dart';

class RateCalculateInfo {
  final RateCalculateSourceInfo baseInfo;
  final CalculationMode calculationMode;
  final String amount;
  final bool includeFee;

  RateCalculateInfo({
    required this.baseInfo,
    required this.calculationMode,
    required this.amount,
    includeFee,
  }) : includeFee = (includeFee != null) ? includeFee : false;
}
