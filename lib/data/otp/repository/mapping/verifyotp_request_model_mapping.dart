import 'package:repository/data/otp/model/verifyotp/verifyotp_request_model.dart';
import 'package:repository/data/otp/repository/mapping/otp_issue_type_mapping.dart';
import 'package:repository/repository.dart';

extension VerifyOtpDataMapping on VerifyOTP {
  VerifyOtpRequestModel toRequestData() {
    return VerifyOtpRequestModel(
      issueType: issueType.value(verifyBy),
      verificationCode: verificationCode,
      processID: processID,
    );
  }
}
