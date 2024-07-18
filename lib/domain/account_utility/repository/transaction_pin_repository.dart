import 'package:either_dart/either.dart';
import 'package:repository/domain/account_utility/entities/change_transaction_pin.dart';

abstract class TransactionPinRepository {
  Future<Either<Exception, String>> setTransactionPin(ChangeTradePinInfo data);
  Future<Either<Exception, String>> changeTransactionPin(ChangeTradePinInfo data);
  Future<Either<Exception, String>> resetTransactionPin(ChangeTradePinInfo data);
}
