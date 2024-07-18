import 'package:repository/domain/account_utility/entities/password_issue_type.dart';

class ResetPasswordInfo {
  final String newPassword;
  final String processID;
  final PasswordIssueType passwordIssueType;

  ResetPasswordInfo({required this.newPassword, required this.processID, required this.passwordIssueType});
}
