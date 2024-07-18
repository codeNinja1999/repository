import 'package:repository/domain/transaction/entities/transaction_receiver.dart';
import 'package:repository/domain/transaction/entities/transaction_sender_info.dart';
import 'package:repository/domain/exchange_rate/enetities/calculate_mode.dart';

class CreateTransactionResult {
  final String? id;
  final String? createdDate;
  final String? promptPayQr;
  final TransactionSenderResult? senderResult;
  final TransactionReceiverResult? receiverResult;
  final CalculationMode? calculationMode;
  final String? serviceFee;
  final String? discountFee;
  final String? totalAmountToPay;
  final String? currentRate;
  final String? balance;
  final String? taxAmount;

  CreateTransactionResult(
      {this.id,
      this.promptPayQr,
      this.createdDate,
      this.senderResult,
      this.receiverResult,
      this.calculationMode,
      this.serviceFee,
      this.discountFee,
      this.totalAmountToPay,
      this.currentRate,
      this.balance,
      this.taxAmount});
}
