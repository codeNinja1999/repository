import 'package:repository/data/core/string_format_utils.dart';
import 'package:repository/data/receiver/model/get_receiver/get_receiver_response_model.dart';
import 'package:repository/domain/catalog/entities/catalogs.dart';
import 'package:repository/domain/common/model/name.dart';
import 'package:repository/domain/receiver/entities/receiver.dart';
import 'package:repository/domain/receiver/entities/receiver_contact_info.dart';
import 'package:repository/domain/receiver/entities/receiver_identification_info.dart';
import 'package:repository/domain/receiver/entities/receiver_payout_info.dart';
import 'package:repository/domain/receiver/entities/receiver_personal_info.dart';

extension GetReceiverResponseDataMapping on ResultList {
  DetailedReceiver get toDomain {
    final isCorporateTransfer = corporateTransfer == true;
    final receiverType = (isCorporateTransfer) ? "corporate" : "individual";
    final englishName = Name(
      firstName: nameEnglish?.firstName,
      middleName: nameEnglish?.middleName,
      lastName: nameEnglish?.lastName,
    );

    final payoutInformation = DetailedReceiverPayoutInfo(
        id: beneficiaryDetail?.beneficiaryIdNumber ?? "",
        receivingCountry:
            ReceivingCountry(id: beneficiaryDetail?.countryCode ?? "", value: beneficiaryDetail?.countryName ?? ""),
        nationality: Catalog(id: beneficiaryDetail?.countryCode ?? "", value: beneficiaryDetail?.countryName ?? ""),
        bank: Bank(
            id: beneficiaryDetail?.bankCode ?? "",
            value: beneficiaryDetail?.bankName ?? "",
            methodCode: beneficiaryDetail?.remittanceMethodCode ?? ""),
        payoutPartner: Catalog(id: furikomiRemittance?.bankCode ?? "", value: furikomiRemittance?.bankName ?? ""),
        mode: PaymentMode(
            id: beneficiaryDetail?.depositTypeData ?? "",
            value: beneficiaryDetail?.remittanceMethodName ?? "",
            receiverCurrency: beneficiaryDetail?.receiveCurrencyCode,
            remittanceMethodType: beneficiaryDetail?.remittanceMethodType ?? ""),
        currency:
            Catalog(id: beneficiaryDetail?.receiveCurrencyCode ?? "", value: beneficiaryDetail?.receiveCurrencyCode ?? ""),
        headOffice: Catalog(id: beneficiaryDetail?.bankCode ?? "", value: beneficiaryDetail?.bankName ?? ""),
        // branch: beneficiaryDetail?.branchName ?? "",
        // branchCode: beneficiaryDetail?.branchCode ?? "",
        branch: Branch(id: beneficiaryDetail?.branchCode ?? "", value: beneficiaryDetail?.branchName ?? ""),
        accountType: Catalog(
            id: beneficiaryDetail?.remittanceMethodTypeCode ?? "", value: beneficiaryDetail?.remittanceMethodType ?? ""),
        accountNumber: beneficiaryDetail?.accountNumber ?? "");
    final responseData = DetailedReceiver(
      id: beneficiaryId,
      receiverType: Catalog(id: receiverType, value: receiverType),
      personalInfo: ReceiverPersonalInfo(
          beneficiaryNativeFirstName: beneficiaryDetail?.beneficiaryNativeFirstName,
          beneficiaryNativeLastName: beneficiaryDetail?.beneficiaryNativeLastName,
          nameEnglish: englishName,
          mobile: mobileNumber,
          // Name(
          //     firstName: nameEnglish?.firstName, middleName: nameEnglish?.middleName, lastName: nameEnglish?.lastName),
          nameAlternative: null,
          fullName: StringFormatUtils.mergeName(englishName),
          // (middleName != null && middleName != "") ? "$firstName $middleName $lastName" : "$firstName $lastName",
          nickName: beneficiaryDetail?.transferNickname,
          gender: Catalog(id: gender ?? "", value: gender != null ? getGenderValue(gender) : ""),
          dateOfBirth: birthday,
          receivingCountry: Country(
              id: beneficiaryDetail?.countryCode ?? "",
              value: beneficiaryDetail?.countryName ?? "",
              telephoneCode: beneficiaryDetail?.countryCode ?? ""),
          nationality: Country(
              id: countryOfOriginCode ?? "", value: countryOfOriginValue ?? "", telephoneCode: countryOfOriginCode ?? ""),
          occupation: Catalog(
              id: beneficiaryDetail?.beneficiaryOccupationId ?? "", value: beneficiaryDetail?.beneficiaryOccupation ?? ""),
          occupationAlternative: beneficiaryDetail?.beneficiaryOccupationOther,
          relation: Catalog(id: relationshipWithBeneficiaryCode ?? "", value: relationshipWithBeneficiaryValue ?? ""),
          relationAlternative: relationshipWithBeneficiaryDetail,
          purposeOfRemittance: Catalog(id: remittanceReasonCode ?? "", value: remittanceReasonDetail ?? ""),
          purposeOfRemittanceAlternative: remittanceReasonDetail ?? ""),
      contactInfo: ReceiverContactInfo(
        receivingCountry: ReceivingCountry(
          id: beneficiaryDetail?.countryCode ?? "",
          value: beneficiaryDetail?.countryName ?? "",
          currencyCode: beneficiaryDetail?.receiveCurrencyCode ?? "",
        ),
        postalCode: addressInfo?.zipCode ?? "",
        receiverNativeAddress: addressInfo?.receiverNativeAddress,
        state: States(id: addressInfo?.addressStateProvince ?? "", value: addressInfo?.addressStateProvince ?? ""),
        stateAlternative: addressInfo?.addressStateProvince ?? "",
        city: Catalog(id: addressInfo?.addressCityTown ?? "", value: addressInfo?.addressCityTown ?? ""),
        streetAddress: addressInfo?.addressStreet ?? "",
        address2: addressInfo?.addressStreet,
        emailAddress: emailAddress,
        mobileNumber: mobileNumber,
        telephoneNumber: telephoneNumber,
      ),
      identificationInfo: ReceiverIdentificationInfo(
        idType:
            Catalog(id: beneficiaryDetail?.beneficiaryIdType ?? "", value: beneficiaryDetail?.beneficiaryIdTypeName ?? ""),
        idNumber: beneficiaryDetail?.beneficiaryIdNumber ?? "",
        issuedDate: beneficiaryDetail?.beneficiaryidIssueDate ?? "",
        expiryDate: beneficiaryDetail?.beneficiaryidExpiryDate ?? "",
        issuedCountry: Catalog(
            id: beneficiaryDetail?.beneficiaryIdIssuedCountryCode ?? "", value: beneficiaryDetail?.countryName ?? ""),
        issuedCountryState: Catalog(
            id: beneficiaryDetail?.beneficiaryIdIssuedCountryCode ?? "", value: beneficiaryDetail?.countryName ?? ""),
      ),
      defaultPayoutInfo: payoutInformation,
      payoutList: null,
    );
    return responseData;
  }
}

String getGenderValue(String? gender) {
  if (gender == "M") {
    return "Male";
  } else if (gender == "F") {
    return "Female";
  } else {
    return "Other";
  }
}
