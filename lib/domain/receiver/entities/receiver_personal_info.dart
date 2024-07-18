import 'package:repository/domain/catalog/entities/catalogs.dart';
import 'package:repository/domain/common/model/name.dart';

class ReceiverPersonalInfo {
  final Name nameEnglish;
  final Name? nameAlternative;
  final String? fullName;
  final String? nickName;
  final String? beneficiaryNativeFirstName;
  final String? beneficiaryNativeLastName;
  final Catalog? gender;
  final String? dateOfBirth;
  final Country? nationality;
  final Catalog? relation;
  final Catalog? depositType;

  final String? address;
  final String? mobile;
  final Catalog? occupation;
  final Country? receivingCountry;
  final String? occupationAlternative;
  final String? relationAlternative;
  final Catalog? purposeOfRemittance;
  final Catalog? sourecOfFunds;
  final String? purposeOfRemittanceOther;
  final String? sourecOfFundsOther;
  final String? purposeOfRemittanceAlternative;

  ReceiverPersonalInfo(
      {required this.nameEnglish,
      this.nameAlternative,
      this.fullName,
      this.nickName,
      this.beneficiaryNativeFirstName,
      this.beneficiaryNativeLastName,
      this.gender,
      this.address,
      this.depositType,
      this.mobile,
      this.dateOfBirth,
      this.nationality,
      this.relation,
      this.receivingCountry,
      this.occupation,
      this.occupationAlternative,
      this.relationAlternative,
      this.purposeOfRemittance,
      this.sourecOfFunds,
      this.purposeOfRemittanceOther,
      this.sourecOfFundsOther,
      this.purposeOfRemittanceAlternative});
}
