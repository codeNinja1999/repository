import 'package:repository/domain/transaction/entities/cancel_transaction/cancel_transaction_info.dart';
import 'package:repository/domain/transaction/entities/confirm_transaction/confirm_transaction_result.dart';
import 'package:repository/domain/transaction/entities/transaction_list_filter.dart';
import 'package:repository/domain/transaction/entities/upload_payment/upload_payment_info.dart';
import 'package:repository/repository.dart';

abstract class TransactionActivityRepository {
  Future<Either<Exception, CalculateTransactionResult>> calculateTransaction(CalculateTransactionInfo info);

  Future<Either<Exception, CreateTransactionResult>> createTransaction(CreateTransactionInfo info);

  Future<Either<Exception, ConfirmTransactionResult>> confirmCreatedTransaction(ConfirmTransactionInfo info);

  Stream<List<DetailedTransaction>?> transactionList();

  Future<Either<Exception, String>> uploadPaymentReceipt(UploadPaymentInfo info);

  Future<Either<Exception, String>> cancelTransaction(CancelTransactionInfo info);

  Future<String> getTransactionList(TransactionListFilter filter);

  Future<Either<Exception, DetailedTransaction>> getTransactionDetail(String id);
}
