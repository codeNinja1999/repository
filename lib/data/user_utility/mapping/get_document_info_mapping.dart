import 'package:repository/data/user_utility/model/get_document/get_document_response_model.dart';
import 'package:repository/domain/user/entities/user_info/user_document_info.dart';

extension GetDocumentInfoMapping on DocumentImageListModel {
  UserDocumentInfo toDomain() {
    return UserDocumentInfo(profileImage: selfie, selfieImage: selfie, documentFrontImage: front, documentBackImage: back);
  }
}
