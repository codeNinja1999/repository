import 'package:repository/data/chanage_profile_pic/model/change_profile_pic_request_model.dart';
import 'package:repository/domain/change_profile_pic/entities/change_profile_pic_info.dart';

extension ChangeProfilePicRequestDataMapping on ChangeProfilePicInfo {
  ChangeProfileRequestModel toRequestData() {
    final requestData = ChangeProfileRequestModel(imageSelfie: imageSelfie);
    return requestData;
  }
}
