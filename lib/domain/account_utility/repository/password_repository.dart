import 'package:either_dart/either.dart';
import 'package:repository/domain/account_utility/entities/change_password_info.dart';
import 'package:repository/domain/account_utility/entities/reset_password_info.dart';

abstract class PasswordRepository {
  Future<Either<Exception, String>> changePassword(ChangePasswordInfo data);
  Future<Either<Exception, String>> resetPassword(ResetPasswordInfo data);
}
