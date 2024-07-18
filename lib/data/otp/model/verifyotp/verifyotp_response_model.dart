import 'package:repository/domain/otp/entities/otp_access_credential.dart';

class VerifyOtpResponseModel extends OTPAccessCredential {
  VerifyOtpResponseModel({required String processID}) : super(processID: processID);

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      VerifyOtpResponseModel(processID: json["process_id"]);
}
