import 'package:repository/data/transaction/model/cancel_transaction/cancel_transaction_request_data_mapping.dart';
import 'package:repository/domain/transaction/entities/cancel_transaction/cancel_transaction_info.dart';

extension CancelTransactionResponseDataMapping on CancelTransactionInfo {
  CancelTransactionRequest toDomain() {
    final responseData = CancelTransactionRequest(
      tranno: tranno,
    );
    return responseData;
  }
}
