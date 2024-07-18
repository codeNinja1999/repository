import 'package:either_dart/either.dart';
import 'package:repository/data/otp/model/sendotp/send_otp_response_model.dart';
import 'package:repository/data/otp/model/verifyotp/verifyotp_response_model.dart';
import 'package:repository/data/otp/repository/mapping/sendotp_request_model._mapping.dart';
import 'package:repository/data/otp/repository/mapping/verifyotp_request_model_mapping.dart';
import 'package:repository/domain/otp/entities/otp_access_credential.dart';
import 'package:repository/domain/otp/entities/generate_otp.dart';
import 'package:repository/domain/otp/entities/verify_otp.dart';
import 'package:repository/domain/otp/repository/otp_repository.dart';
import 'package:network/network.dart';
import 'package:repository/data/core/app_service_endpoints.dart';
import 'dart:convert';

class SendOtpRepositoryImpl implements OTPRepository {
  SendOtpRepositoryImpl({required this.networkClient});

  NetworkClient networkClient;

  @override
  Future<Either<Exception, String>> generateOTP(GenerateOTP data) async {
    final requestData = data.toRequestData();
    final postBody = jsonEncode(requestData.toJson());
    try {
      final response = await networkClient.post(AppServiceEndpoints.sendOTP, body: postBody);
      final responseJson = json.decode(response.asString);
      final responseData = SendOtpResponseModel.fromJson(responseJson);
      return Right(responseData.processId ?? "");
    } on Exception catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<Exception, OTPAccessCredential>> verifyOTP(VerifyOTP verifyInfo) async {
    final requestData = verifyInfo.toRequestData();
    final postBody = jsonEncode(requestData.toJson());

    try {
      final response = await networkClient.post(AppServiceEndpoints.verifyOTP, body: postBody);
      final responseJson = json.decode(response.asString);
      final credential = VerifyOtpResponseModel.fromJson(responseJson);
      return Right(credential);
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
