import 'package:repository/domain/account_utility/entities/password_issue_type.dart';

extension PasswordIssuTypeValue on PasswordIssueType {
  String get value => getValue();

  String getValue() {
    switch (this) {
      case PasswordIssueType.update:
        return "01";

      case PasswordIssueType.reset:
        return "02";
    }
  }
}
