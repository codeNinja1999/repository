import 'package:repository/domain/change_profile_pic/entities/change_profile_pic_info.dart';
import 'package:repository/domain/change_profile_pic/entities/change_profile_pic_list.dart';
import 'package:repository/repository.dart';

abstract class ChangeProfilePicRepository {
//Change Profile pic
  Future<Either<Exception, ChangeProfilePicList>> changeProfilePic(ChangeProfilePicInfo picData);
}
