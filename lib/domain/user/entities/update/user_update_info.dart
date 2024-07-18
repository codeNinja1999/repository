import 'package:repository/domain/user/entities/user_info/user.dart';

class UserUpdateInfo {
  final String? tradePassword;
  final String? language;
  final String? campaignCode;
  final User? userInfo;

  UserUpdateInfo({this.tradePassword, this.language, this.campaignCode, this.userInfo});
}
