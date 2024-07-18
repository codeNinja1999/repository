import 'package:repository/data/chanage_profile_pic/model/change_profile_pic_response_model.dart';
import 'package:repository/domain/change_profile_pic/entities/change_profile_pic_list.dart';

extension EntertainmentResponseMapping on ChangeProfileResponse {
  ChangeProfilePicList toDomain() {
    return ChangeProfilePicList(
      fileName: fileName,
    );
  }
}
