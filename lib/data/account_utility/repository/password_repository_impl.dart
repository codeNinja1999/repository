import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:repository/data/account_utility/repository/mappings/password_request_model.dart';
import 'package:repository/data/account_utility/repository/mappings/reset_password_request_model.dart';
import 'package:repository/data/core/app_service_endpoints.dart';
import 'package:repository/domain/account_utility/entities/reset_password_info.dart';
import 'package:repository/domain/account_utility/entities/change_password_info.dart';
import 'package:repository/domain/account_utility/repository/password_repository.dart';
import 'package:network/network.dart';

import '../../user/data_store/user_credential_data.dart';

class PasswordRepositoryImpl implements PasswordRepository {
  PasswordRepositoryImpl({required this.networkClient});
  NetworkClient networkClient;
  @override
  Future<Either<Exception, String>> changePassword(ChangePasswordInfo data) async {
    final requestData = data.toRequestData();
    final parameter = jsonEncode(requestData.toJson());
    try {
      final _ = await networkClient.put(AppServiceEndpoints.changePassword, body: parameter);
      final userCredentialStorage = UserCredentialDataStore();
      userCredentialStorage.deleteCredential();
      return const Right("Sucess");
    } on Exception catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<Exception, String>> resetPassword(ResetPasswordInfo data) async {
    final requestData = data.toRequestData();
    final parameter = jsonEncode(requestData.toJson());
    try {
      final _ = await networkClient.put(AppServiceEndpoints.resetPassword, body: parameter);
      return const Right("Sucess");
    } on Exception catch (error) {
      return Left(error);
    }
  }
}
