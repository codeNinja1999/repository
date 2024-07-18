import 'package:repository/data/user_utility/model/update_userInfo/update_userinfo_request_model.dart';
import 'package:repository/domain/user/entities/update/user_update_info.dart';

extension UpdateuserinfoRequestDataMapping on UserUpdateInfo {
  UserupdateinfoRequestModel toRequestData() {
    final name = Name(
        lastName: userInfo?.personalInfo.fullName,
        firstName: userInfo?.personalInfo.fullName,
        middleName: userInfo?.personalInfo.fullName);
    final addressInfo = AddressInfo(
        masterCode: "",
        addressZipcode: userInfo?.userContactInfo.residentialContactInfo.postalCode,
        addressStreet: userInfo?.userContactInfo.residentialContactInfo.streetAddress,
        addressCity: userInfo?.userContactInfo.residentialContactInfo.city?.id,
        addressState: userInfo?.userContactInfo.residentialContactInfo.state?.id,
        addressInput: userInfo?.userContactInfo.residentialContactInfo.streetNumber);
    final memberInfo = MemberInfo(
        nameAlternate: name, nameEnglish: name, addressInfo: addressInfo, gender: userInfo?.personalInfo.gender?.id);
    final requestData = UserupdateinfoRequestModel(tradePassword: tradePassword, memberInfo: memberInfo);
    return requestData;
  }
}
