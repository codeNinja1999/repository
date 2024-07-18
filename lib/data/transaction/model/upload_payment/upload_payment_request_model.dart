// To parse this JSON data, do
//
//     final calculateTransactionRequest = calculateTransactionRequestFromJson(jsonString);

import 'dart:io';

class UploadPaymentRequest {
  final File? receiptImage;
  final String? tranno;
  final String? depositBankId;

  UploadPaymentRequest({
    this.receiptImage,
    this.tranno,
    this.depositBankId,
  });

  Map<String, dynamic> toJson() => {
        "receipt": receiptImage,
        "tranno": tranno,
        "deposit_bank_id": depositBankId,
      };
}
