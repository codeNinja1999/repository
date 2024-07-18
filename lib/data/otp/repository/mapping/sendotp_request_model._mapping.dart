import 'package:repository/data/otp/model/sendotp/sendotp_request_model.dart';
import 'package:repository/data/otp/repository/mapping/otp_issue_type_mapping.dart';
import 'package:repository/repository.dart';

extension SendOtpRequestDataMapping on GenerateOTP {
  SendOtpRequestModel toRequestData() {
    return SendOtpRequestModel(
      mobileNumber: verifyBy == VerifyBy.mobileNumber ? recipient : "",
      emailAddress: verifyBy == VerifyBy.email ? recipient : "",
      issueType: issueType.value(verifyBy),
      birthday: dateOfBirth,
      language: "en",
      customerNo: userID,
    );
  }
}
