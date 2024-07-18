import 'package:repository/repository.dart';

abstract class UserAuthenticationRepository {
  Future<UserAccessCredential?> userAccessCredential();
  Future<Either<Exception, UserAccessCredential>> authenticateUser(LoginInfo loginInfo);
  Future<Either<Exception, UserAccessCredential>> refreshUserToken();

  Future<Either<Exception, String>> persistUser(String username);
  Future<Either<Exception, String?>> getUser();
  Future<Either<Exception, String>> clearPersistUser();

  void clearCredential();
}
