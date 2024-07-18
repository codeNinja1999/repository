import 'package:repository/domain/user/entities/registration/level_one_kyc_document.dart';
import 'package:repository/domain/user/entities/registration/upload_level_one_kyc_info.dart';
import 'package:repository/repository.dart';

abstract class UserRegistrationRepository {
  Future<Either<Exception, bool?>> register(UserRegistrationInfo data);

  Future<Either<Exception, LevelOneKycDocument>> uploadLevelOneKycDocument(
      UploadLevelOneKycDocumentInfo userlevelOneKycInfo);
}
