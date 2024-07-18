import 'package:repository/data/transaction/model/history/transaction_history_request_model.dart';
import 'package:repository/domain/transaction/entities/transaction_list_filter.dart';

extension TransactionHistoryRequestDataMapping on TransactionListFilter {
  TransactionHistoryRequest toRequest() {
    final requestData = TransactionHistoryRequest(
        pageNo: pageNumber, displayDataNo: itemCount, tradeFormDate: startDate, tradeToDate: endDate, issueType: issueType);
    return requestData;
  }
}
