import 'package:either_dart/either.dart';
import 'package:repository/domain/user/entities/notification/notification_data.dart';
import 'package:repository/domain/user/entities/update/user_update_info.dart';
import 'package:repository/domain/user/entities/user_info/user.dart';
import 'package:repository/domain/user/entities/user_info/user_document_info.dart';

abstract class UserUtilitiesRepository {
  Future<String> getUserInfo();
  Future<Either<Exception, DetailedUser>> updateUserInfo(UserUpdateInfo data);
  Future<Either<Exception, List<NotificationData>>> getUserNotification();
  Stream<DetailedUser?> userInfo();
  Future<Either<Exception, UserDocumentInfo>> getCustomerDocument();
  Future<Either<Exception, String>> logoutUser();
  clearSavedUser();
}
