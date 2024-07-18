import 'package:repository/data/account_utility/model/change_transactionpin/change_transactionpin_request_model.dart';
import 'package:repository/domain/account_utility/entities/change_transaction_pin.dart';

extension ChangeTransactionPinRequestDataMapping on ChangeTradePinInfo {
  ChangeTransactionPinRequestModel toRequestData() {
    final requestData = ChangeTransactionPinRequestModel(
      currentPin: currentPin,
      newPin: newPin,
      useAsLoginPassword: "useAsLoginPassword",
      issueType: issueType,
      processId: processID,
    );
    return requestData;
  }
}
