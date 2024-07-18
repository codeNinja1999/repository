class CreateTransactionRequest {
  CreateTransactionRequest({
    this.remittanceInfo,
    this.promoCode,
  });

  RemittanceInfo? remittanceInfo;
  String? promoCode;

  factory CreateTransactionRequest.fromJson(Map<String, dynamic> json) =>
      CreateTransactionRequest(
        remittanceInfo: RemittanceInfo.fromJson(json["remittance_info"]),
        promoCode: json["promo_code"],
      );

  Map<String, dynamic> toJson() => {
        "remittance_info": remittanceInfo?.toJson(),
        "promo_code": promoCode,
      };
}

class RemittanceInfo {
  RemittanceInfo({
    this.sendCurrency,
    this.depositMethodCode,
    this.amountMethodCode,
    this.includeFee,
    this.taxAmount,
    this.remittanceAmount,
    this.remittanceFee,
    this.totalAmount,
    this.estimatedReceivingAmount,
    this.exchangeRate,
    this.beneficiary,
  });

  String? sendCurrency;
  String? depositMethodCode;
  String? amountMethodCode;
  bool? includeFee;
  String? taxAmount;
  String? remittanceAmount;
  String? remittanceFee;
  String? totalAmount;
  String? estimatedReceivingAmount;
  String? exchangeRate;
  Beneficiary? beneficiary;

  factory RemittanceInfo.fromJson(Map<String, dynamic> json) => RemittanceInfo(
        sendCurrency: json["send_currency"],
        depositMethodCode: json["deposit_method_code"],
        amountMethodCode: json["amount_method_code"],
        includeFee: json["include_fee"],
        taxAmount: json["tax_charge"],
        remittanceAmount: json["remittance_amount"],
        remittanceFee: json["remittance_fee"],
        totalAmount: json["total_amount"],
        estimatedReceivingAmount: json["estimated_receiving_amount"],
        exchangeRate: json["exchange_rate"],
        beneficiary: Beneficiary.fromJson(json["beneficiary"]),
      );

  Map<String, dynamic> toJson() => {
        "send_currency": sendCurrency,
        "deposit_method_code": depositMethodCode,
        "amount_method_code": amountMethodCode,
        "include_fee": includeFee,
        "remittance_amount": remittanceAmount,
        "remittance_fee": remittanceFee,
        "total_amount": totalAmount,
        "tax_charge": taxAmount,
        "estimated_receiving_amount": estimatedReceivingAmount,
        "exchange_rate": exchangeRate,
        "beneficiary": beneficiary?.toJson(),
      };
}

class Beneficiary {
  Beneficiary({
    this.beneficiaryId,
    this.beneficiaryDetail,
    this.nameEnglish,
    this.addressInfo,
    this.birthday,
    this.gender,
    this.telephoneNumber,
    this.emailAddress,
    this.relationshipWithBeneficiaryCode,
    this.relationshipWithBeneficiaryDetail,
    this.remittanceReasonCode,
    this.remittanceReasonDetail,
    this.countryOfOriginCode,
    this.countryOfShipmentCode,
    this.placeOfShipment,
    this.message1,
    this.message2,
    this.secretQuestionCode,
    this.answer,
    this.beneficiaryAccNameConfirmationStatus,
    this.corporateTransfer,
    this.corporateName,
    this.receiverRegistrationNumber,
    this.sourceOfFundsCode,
    this.purposeOfRemittanceOther,
    this.sourceOfFundsOther,
  });

  String? beneficiaryId;
  BeneficiaryDetail? beneficiaryDetail;
  NameEnglish? nameEnglish;
  AddressInfo? addressInfo;
  String? birthday;
  String? gender;
  String? telephoneNumber;
  String? emailAddress;
  String? relationshipWithBeneficiaryCode;
  String? relationshipWithBeneficiaryDetail;
  String? remittanceReasonCode;
  String? remittanceReasonDetail;
  String? countryOfOriginCode;
  String? countryOfShipmentCode;
  String? placeOfShipment;
  String? message1;
  String? message2;
  String? secretQuestionCode;
  String? answer;
  bool? beneficiaryAccNameConfirmationStatus;
  bool? corporateTransfer;
  String? corporateName;
  String? receiverRegistrationNumber;
  String? sourceOfFundsCode;
  String? purposeOfRemittanceOther;
  String? sourceOfFundsOther;
  factory Beneficiary.fromJson(Map<String, dynamic> json) => Beneficiary(
        beneficiaryId: json["beneficiary_id"],
        beneficiaryDetail:
            BeneficiaryDetail.fromJson(json["beneficiary_detail"]),
        nameEnglish: NameEnglish.fromJson(json["name_english"]),
        addressInfo: AddressInfo.fromJson(json["address_info"]),
        birthday: json["birthday"],
        gender: json["gender"],
        telephoneNumber: json["telephone_number"],
        emailAddress: json["email_address"],
        relationshipWithBeneficiaryCode:
            json["relationship_with_beneficiary_code"],
        relationshipWithBeneficiaryDetail:
            json["relationship_with_beneficiary_detail"],
        remittanceReasonCode: json["remittance_reason_code"],
        remittanceReasonDetail: json["remittance_reason_detail"],
        countryOfOriginCode: json["country_of_origin_code"],
        countryOfShipmentCode: json["country_of_shipment_code"],
        placeOfShipment: json["place_of_shipment"],
        message1: json["message1"],
        message2: json["message2"],
        secretQuestionCode: json["secret_question_code"],
        answer: json["answer"],
        beneficiaryAccNameConfirmationStatus:
            json["beneficiary_acc_name_confirmation_status"],
        corporateTransfer: json["corporate_transfer"],
        corporateName: json["corporate_name"],
        receiverRegistrationNumber: json["receiver_registration_number"],
        sourceOfFundsCode: json["source_of_funds_code"],
        purposeOfRemittanceOther: json["purpose_of_remittance_other"],
        sourceOfFundsOther: json["source_of_funds_other"],
      );

  Map<String, dynamic> toJson() => {
        "beneficiary_id": beneficiaryId,
        "beneficiary_detail": beneficiaryDetail?.toJson(),
        "name_english": nameEnglish?.toJson(),
        "address_info": addressInfo?.toJson(),
        "birthday": birthday,
        "gender": gender,
        "telephone_number": telephoneNumber,
        "email_address": emailAddress,
        "relationship_with_beneficiary_code": relationshipWithBeneficiaryCode,
        "relationship_with_beneficiary_detail":
            relationshipWithBeneficiaryDetail,
        "remittance_reason_code": remittanceReasonCode,
        "remittance_reason_detail": remittanceReasonDetail,
        "country_of_origin_code": countryOfOriginCode,
        "country_of_shipment_code": countryOfShipmentCode,
        "place_of_shipment": placeOfShipment,
        "message1": message1,
        "message2": message2,
        "secret_question_code": secretQuestionCode,
        "answer": answer,
        "beneficiary_acc_name_confirmation_status":
            beneficiaryAccNameConfirmationStatus,
        "corporate_transfer": corporateTransfer,
        "corporate_name": corporateName,
        "receiver_registration_number": receiverRegistrationNumber,
        "source_of_funds_code": sourceOfFundsCode,
        "purpose_of_remittance_other": purposeOfRemittanceOther,
        "source_of_funds_other": sourceOfFundsOther,
      };
}

class AddressInfo {
  AddressInfo({
    this.zipCode,
    this.addressCountryCode,
    this.addressStateProvince,
    this.addressCityTown,
    this.addressStreet,
  });

  String? zipCode;
  String? addressCountryCode;
  String? addressStateProvince;
  String? addressCityTown;
  String? addressStreet;

  factory AddressInfo.fromJson(Map<String, dynamic> json) => AddressInfo(
        zipCode: json["zip_code"],
        addressCountryCode: json["address_country_code"],
        addressStateProvince: json["address_state_province"],
        addressCityTown: json["address_city_town"],
        addressStreet: json["address_street"],
      );

  Map<String, dynamic> toJson() => {
        "zip_code": zipCode,
        "address_country_code": addressCountryCode,
        "address_state_province": addressStateProvince,
        "address_city_town": addressCityTown,
        "address_street": addressStreet,
      };
}

class BeneficiaryDetail {
  BeneficiaryDetail({
    this.countryCode,
    this.countryName,
    this.remittanceMethodCode,
    this.remittanceMethodName,
    this.receiveCurrencyCode,
    this.transferNickname,
    this.bankName,
    this.branchName,
    this.accountNumber,
    this.bankCode,
    this.branchCode,
    this.depositTypeCode,
    this.subBranchName,
    this.beneficiaryIdNumber,
    this.beneficiaryIdType,
    this.beneficiaryIdIssuedCountryCode,
  });

  String? countryCode;
  String? countryName;
  String? remittanceMethodCode;
  String? remittanceMethodName;
  String? receiveCurrencyCode;
  String? transferNickname;
  String? bankName;
  String? branchName;
  String? accountNumber;
  String? bankCode;
  String? branchCode;
  String? depositTypeCode;
  String? subBranchName;
  String? beneficiaryIdNumber;
  String? beneficiaryIdType;
  String? beneficiaryIdIssuedCountryCode;

  factory BeneficiaryDetail.fromJson(Map<String, dynamic> json) =>
      BeneficiaryDetail(
        countryCode: json["country_code"],
        countryName: json["country_name"],
        remittanceMethodCode: json["remittance_method_code"],
        remittanceMethodName: json["remittance_method_name"],
        receiveCurrencyCode: json["receive_currency_code"],
        transferNickname: json["transfer_nickname"],
        bankName: json["bank_name"],
        branchName: json["branch_name"],
        accountNumber: json["account_number"],
        bankCode: json["bank_code"],
        branchCode: json["branch_code"],
        depositTypeCode: json["deposit_type_code"],
        subBranchName: json["sub_branch_name"],
        beneficiaryIdNumber: json["beneficiary_id_number"],
        beneficiaryIdType: json["beneficiary_id_type"],
        beneficiaryIdIssuedCountryCode:
            json["beneficiary_id_issued_country_code"],
      );

  Map<String, dynamic> toJson() => {
        "country_code": countryCode,
        "country_name": countryName,
        "remittance_method_code": remittanceMethodCode,
        "remittance_method_name": remittanceMethodName,
        "receive_currency_code": receiveCurrencyCode,
        "transfer_nickname": transferNickname,
        "bank_name": bankName,
        "branch_name": branchName,
        "account_number": accountNumber,
        "bank_code": bankCode,
        "branch_code": branchCode,
        "deposit_type_code": depositTypeCode,
        "sub_branch_name": subBranchName,
        "beneficiary_id_number": beneficiaryIdNumber,
        "beneficiary_id_type": beneficiaryIdType,
        "beneficiary_id_issued_country_code": beneficiaryIdIssuedCountryCode,
      };
}

class NameEnglish {
  NameEnglish({
    this.firstName,
    this.middleName,
    this.lastName,
    this.lastName2,
  });

  String? firstName;
  String? middleName;
  String? lastName;
  String? lastName2;

  factory NameEnglish.fromJson(Map<String, dynamic> json) => NameEnglish(
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        lastName2: json["last_name2"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "last_name2": lastName2,
      };
}
