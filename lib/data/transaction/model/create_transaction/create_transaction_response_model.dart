class CreateTransactionResponse {
  CreateTransactionResponse({
    this.remittanceInfo,
  });

  RemittanceInfo? remittanceInfo;

  factory CreateTransactionResponse.fromJson(Map<String, dynamic> json) =>
      CreateTransactionResponse(
        remittanceInfo: RemittanceInfo.fromJson(json["remittance_info"]),
      );
}

class RemittanceInfo {
  RemittanceInfo({
    this.transactionId,
    this.promptPayQr,
    this.remittanceAmount,
    this.remittanceFee,
    this.depositFee,
    this.depositMethodCode,
    this.amountMethodCode,
    this.includeFee,
    this.totalAmount,
    this.bonusAmt,
    this.taxAmount,
    this.receivingAmount,
    this.exchangeRate,
    this.exchangeBaseCurrencyCode,
    this.exchangeCounterCurrencyCode,
    this.remittanceStatusCode,
    this.referenceNumber,
    this.convenienceReceiptNumber,
    this.conveniencePaymentUrl,
    this.receiptTs,
    this.lastUpdateTs,
    this.beneficiary,
  });

  String? transactionId;
  String? promptPayQr;
  String? remittanceAmount;
  String? remittanceFee;
  String? depositFee;
  String? depositMethodCode;
  String? amountMethodCode;
  bool? includeFee;
  String? totalAmount;
  String? bonusAmt;
  String? taxAmount;
  String? receivingAmount;
  String? exchangeRate;
  String? exchangeBaseCurrencyCode;
  String? exchangeCounterCurrencyCode;
  String? remittanceStatusCode;
  String? referenceNumber;
  String? convenienceReceiptNumber;
  String? conveniencePaymentUrl;
  String? receiptTs;
  String? lastUpdateTs;
  Beneficiary? beneficiary;

  factory RemittanceInfo.fromJson(Map<String, dynamic> json) => RemittanceInfo(
        transactionId: json["transaction_id"],
        promptPayQr: json["prompt_pay_qr"],
        remittanceAmount: json["remittance_amount"],
        remittanceFee: json["remittance_fee"],
        depositFee: json["deposit_fee"],
        depositMethodCode: json["deposit_method_code"],
        amountMethodCode: json["amount_method_code"],
        includeFee: json["include_fee"],
        totalAmount: json["total_amount"],
        bonusAmt: json["bonus_amt"],
        taxAmount: json["tax_amount"],
        receivingAmount: json["receiving_amount"],
        exchangeRate: json["exchange_rate"],
        exchangeBaseCurrencyCode: json["exchange_base_currency_code"],
        exchangeCounterCurrencyCode: json["exchange_counter_currency_code"],
        remittanceStatusCode: json["remittance_status_code"],
        referenceNumber: json["reference_number"],
        convenienceReceiptNumber: json["convenience_receipt_number"],
        conveniencePaymentUrl: json["convenience_payment_url"],
        receiptTs: json["receipt_ts"],
        lastUpdateTs: json["last_update_ts"],
        beneficiary: json["beneficiary"] != null
            ? Beneficiary.fromJson(json["beneficiary"])
            : null,
      );
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
    this.sourceOfFundsOther,
    this.purposeOfRemittanceOther,
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
      beneficiaryDetail: BeneficiaryDetail.fromJson(json["beneficiary_detail"]),
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
      sourceOfFundsOther: json["source_of_funds_other"]);
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
}
