import 'dart:convert';
import 'package:repository/data/core/app_service_endpoints.dart';
import 'package:repository/data/core/map_extensions.dart';
import 'package:repository/data/user/models/level1_kyc/level_one_kyc_response_model.dart';
import 'package:repository/data/user/models/registration/user_registration_response_model.dart';
import 'package:repository/data/user/repository/mapping/upload_level_one_kyc_request_mapping.dart';
import 'package:repository/data/user/repository/mapping/upload_level_one_kyc_response_mapping.dart';
import 'package:repository/data/user/repository/mapping/user_registration_request_model.dart';
import 'package:repository/domain/user/entities/registration/level_one_kyc_document.dart';
import 'package:repository/domain/user/entities/registration/upload_level_one_kyc_info.dart';
import 'package:repository/repository.dart';

class UserRegistrationRepositoryImpl implements UserRegistrationRepository {
  UserRegistrationRepositoryImpl({required this.networkClient});

  NetworkClient networkClient;

  @override
  Future<Either<Exception, bool?>> register(UserRegistrationInfo data) async {
    final requestData = data.toRequestData();
    final postBody = jsonEncode(requestData.toJson());
    var issanctioned = false;

    try {
      final response = await networkClient.post(AppServiceEndpoints.register, body: postBody);
      final responseData = UserRegistrationResponseModel.fromJson(response.asMap ?? {});
      if (responseData.memberInfo?.issanctioned == "y") {
        issanctioned = true;
      }
      return Right(issanctioned);
    } on Exception catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<Exception, LevelOneKycDocument>> uploadLevelOneKycDocument(
      UploadLevelOneKycDocumentInfo userlevelOneKycInfo) async {
    final requestData = userlevelOneKycInfo.toRequestData();
    final requestFormData = await requestData.toJson().toMultipartFile();
    try {
      final response = await networkClient.send(
        AppServiceEndpoints.levelOneKycDocument,
        method: HttpMethod.post,
        body: requestFormData,
      );
      // final responseJson = jsonDecode(response.asString);
      final responseData = LevelOneKycResponseModel.fromJson(response.asMap ?? {});

      return Right(responseData.toDomain());
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
