import 'package:repository/domain/account_utility/entities/password_issue_type.dart';

class ChangePasswordInfo {
  final String currentPassword;
  final String newPassword;
  final PasswordIssueType issueType;

  ChangePasswordInfo({
    required this.currentPassword,
    required this.newPassword,
    required this.issueType,
  });
}
