import 'package:either_dart/either.dart';
import 'package:repository/domain/user/entities/verification/upload_user_kyc_info.dart';
import 'package:repository/domain/user/entities/verification/document_image_upload_info.dart';

abstract class UserVerificationRepository {
  Future<Either<Exception, String>> uploadDocumentImage(DocumentImageUploadInfo verificationInfo);
  Future<Either<Exception, String>> uploadCustomerKyc(UploadUserKycInfo userKycInfo);
}
