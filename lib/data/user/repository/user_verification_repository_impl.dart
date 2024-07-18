import 'dart:convert';

import 'package:repository/data/core/app_service_endpoints.dart';
import 'package:repository/data/core/map_extensions.dart';
import 'package:repository/data/user/models/verification/upload_document_response_mode.dart';
import 'package:repository/data/user/repository/mapping/document_upload_request_mapping.dart';
import 'package:repository/data/user/repository/mapping/upload_customer_kyc_request_mapping.dart';
import 'package:repository/domain/user/entities/verification/upload_user_kyc_info.dart';
import 'package:repository/repository.dart';

class UserVerificationRepositoryImpl implements UserVerificationRepository {
  UserVerificationRepositoryImpl({required this.networkClient});

  NetworkClient networkClient;

  @override
  Future<Either<Exception, String>> uploadDocumentImage(DocumentImageUploadInfo verificationInfo) async {
    final requestData = verificationInfo.toRequestData();

    final requestFormData = await requestData.toJson().toMultipartFile();
    try {
      final response = await networkClient.send(
        AppServiceEndpoints.documentUpload,
        method: HttpMethod.post,
        body: requestFormData,
      );
      final responseJson = jsonDecode(response.asString);
      final responseData = UploadDocumentResponseModel.fromJson(responseJson);
      return Right(responseData.code ?? "");
    } on Exception catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<Exception, String>> uploadCustomerKyc(UploadUserKycInfo userKycInfo) async {
    final requestData = userKycInfo.toRequestData();
    final postBody = jsonEncode(requestData.toJson());

    try {
      final _ = await networkClient.send(
        AppServiceEndpoints.uploadCustomerKyc,
        method: HttpMethod.post,
        body: postBody,
      );
      return const Right("");
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
