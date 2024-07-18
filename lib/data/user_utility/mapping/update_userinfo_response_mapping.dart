import 'package:repository/data/user_utility/model/get_userinfo/get_userinfo_reponse_model.dart';
import 'package:repository/data/user_utility/mapping/kyc_status_mapping.dart';
import 'package:repository/data/core/string_format_utils.dart';
import 'package:repository/domain/user/entities/user_info/user_customer_profile_image.dart';
import 'package:repository/domain/user/entities/user_info/user_wallet_info.dart';
import 'package:repository/repository.dart';

extension UpdateUserInfoReponseMapping on MemberInfo {
  DetailedUser toDomain() {
    final englishName = EnglishName(
      firstName: nameEnglish?.firstName,
      middleName: nameEnglish?.middleName,
      lastName: nameEnglish?.lastName,
    );

    final userPersonalInfo = UserPersonalInfo(
      nameEnglish: englishName,
      fullName: StringFormatUtils.mergeNames(englishName),
      gender: Catalog(id: gender ?? "", value: gender ?? ""),
      dateOfBirth: birthday,
      nationality: Catalog(id: nationality ?? "", value: nationalityName ?? ""),
      occupation: Catalog(id: occupationCode ?? "", value: occupationCode ?? ""),
      occupationAlternative: occupationOthers,
      sourceOfIncome: Catalog(id: occupationCode ?? "", value: occupationValue ?? ""),
      sourceOfIncomeAlternative: occupationOthers,
      isTradePinEnabled: "",
      birtPlace: birthPlace,
      visaType: Catalog(
        id: identificationInfo?.secondaryIdTypeCode ?? "",
        value: identificationInfo?.secondaryIdTypeValue ?? "",
      ),
      nameAlternative: nameAlternate?.firstName,
    );
    final usercontactinfo = ContactInfo(
      country: Catalog(id: addressInfo?.country ?? "", value: addressInfo?.country ?? ""),
      postalCode: addressInfo?.zipCode,
      state: Catalog(id: "", value: addressInfo?.addressState ?? ""),
      stateAlternative: addressInfo?.addressState,
      city: Catalog(id: "", value: addressInfo?.addressCity ?? ""),
      streetAddress: addressInfo?.addressStreet,
      japaneseSenderAddress: addressInfo?.addressStateJpn,
      japaneseStreetAddress: addressInfo?.addressStateJpn2,
      emailAddress: emailAddress1,
      mobileNumber: mobilePhoneNumber,
      telephoneNumber: homePhoneNumber,
    );
    final identificationInfor = UserIdentificationInfo(
      idType: Catalog(id: identificationInfo?.idTypeCode ?? "", value: identificationInfo?.idTypeValue ?? ""),
      idNumber: identificationInfo?.idNumber,
      issuedDate: identificationInfo?.issueDate,
      expiryDate: identificationInfo?.expireDate,
      issuedCountry: Catalog(
        id: identificationInfo?.issueCountryCode ?? "",
        value: identificationInfo?.issueCountryValue ?? "",
      ),
      idIssueJurisdiction: Catalog(
        id: identificationInfo?.idIssueJurisdiction ?? "",
        value: identificationInfo?.idIssueJurisdiction ?? "",
      ),
      idIssueJurisdictionOther: identificationInfo?.idIssueJurisdictionOther,
      issuedCountryState: Catalog(id: "", value: identificationInfo?.issueCountryState ?? ""),
      referenceNumber: identificationInfo?.medicareRefno ?? "",
      nameAsCard: identificationInfo?.nameOnCard,
      cardColor: identificationInfo?.medicareCardType,
    );
    final walletInfo = UserWalletInfo(
      walletBalance ?? "",
      walletPending,
      lastUpdateTs,
    );
    final userCustomerImage = UserCustomerProfileInfo(
      customerProfileImage: customerProfileDocument?.customerProfileImage,
      customerSelfieImage: customerProfileDocument?.customerSelfieImage,
      customerFrontImage: customerProfileDocument?.documentFrontImage,
      customerBackImage: customerProfileDocument?.documentBackImage,
      customerAdditionalFrontImage: customerProfileDocument?.additionalFrontImage,
      customerAdditionalBackImage: customerProfileDocument?.additionalBackImage,
    );
    final DetailedUser detailedUser = DetailedUser(
      userName: userName ?? "",
      id: customerId ?? "",
      status: status(kycStatus ?? ""),
      identificationInfo: identificationInfor,
      contactInfo: usercontactinfo,
      walletInfo: walletInfo,
      personalInfo: userPersonalInfo,
      promotionalCode: campaignCode ?? "",
      userImage: userCustomerImage,
    );
    final requestData = detailedUser;
    return requestData;
  }
}
