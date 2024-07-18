import 'package:repository/domain/catalog/entities/catalogs.dart';

import 'package:repository/domain/common/model/name.dart';

class TransactionSenderInfo {
  final Country? country;
  final Catalog? currency;
  final Catalog? depositMode;

  TransactionSenderInfo({this.country, this.currency, this.depositMode});
}

class TransactionSenderResult {
  final Country? country;
  final Catalog? currency;
  final Catalog? depositMode;
  final String? realAmount;
  final String? deductedAmount;

  TransactionSenderResult({this.country, this.currency, this.depositMode, this.realAmount, this.deductedAmount});
}

class DetailedTransactionSenderResult {
  final Name? name;
  final Country? country;
  final Catalog? currency;
  final Catalog? depositMode;
  final String? realAmount;
  final String? deductedAmount;

  DetailedTransactionSenderResult(
      {this.name, this.country, this.currency, this.depositMode, this.realAmount, this.deductedAmount});
}
