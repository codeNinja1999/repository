import 'package:repository/repository.dart';

class CalculateTransactionInfo {
  final TransactionSenderInfo? senderInfo;
  final TransactionReceiverInfo? receiverInfo;
  final CalculationMode calculationMode;
  final String? amount;
  final String? promotionalCode;
  final String? discountAmount;

  CalculateTransactionInfo(
      {this.senderInfo,
      this.receiverInfo,
      required this.calculationMode,
      this.amount,
      this.promotionalCode,
      this.discountAmount});
}

// class CalculationMode {
//   static String viaBase() {
//     return "01";
//   }

//  static String viaCounter() {
//     return "02";
//   }
// }
