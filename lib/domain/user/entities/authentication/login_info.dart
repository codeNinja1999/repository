import 'package:repository/domain/user/entities/authentication/login_type.dart';
import 'package:repository/domain/user/entities/authentication/third_party_credential.dart';
import 'package:repository/domain/user/entities/authentication/use_login_credential.dart';

class LoginInfo {
  final UserLoginCredential? userLoginCredential;
  final ThirdPartyCredential? thirdPartyCredential;
  final LoginType loginType;

  LoginInfo({this.userLoginCredential, this.thirdPartyCredential, required this.loginType});
}
