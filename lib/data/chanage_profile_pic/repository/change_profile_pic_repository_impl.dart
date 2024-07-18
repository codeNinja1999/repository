import 'package:repository/data/chanage_profile_pic/model/change_profile_pic_response_model.dart';
import 'package:repository/data/chanage_profile_pic/repository/mapping/change_profile_pic_request_model_mapping.dart';
import 'package:repository/data/chanage_profile_pic/repository/mapping/change_profile_pic_response_model_mapping.dart';
import 'package:repository/data/core/app_service_endpoints.dart';
import 'package:repository/data/core/map_extensions.dart';
import 'package:repository/domain/change_profile_pic/entities/change_profile_pic_info.dart';
import 'package:repository/domain/change_profile_pic/entities/change_profile_pic_list.dart';
import 'package:repository/domain/change_profile_pic/repository/change_profile_pic_repository.dart';
import 'package:repository/repository.dart';

class ChangeProfilePicRepositoryImpl implements ChangeProfilePicRepository {
  ChangeProfilePicRepositoryImpl({required this.networkClient});
  NetworkClient networkClient;

  @override
  Future<Either<Exception, ChangeProfilePicList>> changeProfilePic(ChangeProfilePicInfo picData) async {
    final requestData = picData.toRequestData();
    final requestFormData = await requestData.toJson().toMultipartFile();
    try {
      final response = await networkClient.post(
        AppServiceEndpoints.changeProfileImage,
        body: requestFormData,
      );
      final responseData = ChangeProfileResponse.fromJson(response.asMap ?? {});
      return Right(responseData.toDomain());
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
