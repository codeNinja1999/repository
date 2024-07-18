import 'package:either_dart/either.dart';
import 'package:repository/domain/otp/entities/generate_otp.dart';
import 'package:repository/domain/otp/entities/otp_access_credential.dart';
import 'package:repository/domain/otp/entities/verify_otp.dart';

abstract class OTPRepository {
  Future<Either<Exception, String>> generateOTP(GenerateOTP data);
  Future<Either<Exception, OTPAccessCredential>> verifyOTP(VerifyOTP verifyInfo);
}
