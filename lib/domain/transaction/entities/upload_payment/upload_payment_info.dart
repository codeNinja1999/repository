import 'dart:io';

import 'package:repository/domain/catalog/entities/catalogs.dart';

class UploadPaymentInfo {
  final File? receiptImage;
  final String? tranno;
  final DepositBank? depositBank;

  UploadPaymentInfo({this.receiptImage, this.tranno, this.depositBank});
}
