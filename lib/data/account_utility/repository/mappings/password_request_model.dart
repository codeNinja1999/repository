import 'package:repository/data/account_utility/model/change_password/change_password_request_model.dart';
import 'package:repository/data/user_utility/mapping/password_issue_type_mapping.dart';
import 'package:repository/domain/account_utility/entities/change_password_info.dart';

extension ChangePasswordRequestDataMapping on ChangePasswordInfo {
  ChangePasswordRequestModel toRequestData() {
    final requestData = ChangePasswordRequestModel(
      currentLoginPassword: currentPassword,
      newLoginPassword: newPassword,
      issueType: issueType.value,
      processId: "",
    );
    return requestData;
  }
}
