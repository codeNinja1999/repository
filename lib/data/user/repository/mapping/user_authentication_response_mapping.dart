import 'package:repository/data/user/models/user_authentication/user_authentication_response_model.dart';
import 'package:repository/domain/user/entities/authentication/user_access_credential.dart';

extension UserAuthenticationReponseMapping on UserAuthenticationReponseModel {
  UserAccessCredential toDomain() {
    return UserAccessCredential(
      accessToken: accessToken ?? "",
      refreshToken: refreshToken ?? "",
      firstTimeLogin: firstTimeLogin,
      lastLoginTs: lastLoginTs,
    );
  }
}
