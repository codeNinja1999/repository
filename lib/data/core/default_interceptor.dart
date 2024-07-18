import 'dart:convert';
import 'dart:developer';
import 'package:repository/data/core/error_decodable.dart';
import 'package:repository/data/core/url_provider.dart';
import 'package:network/network.dart';

class DefaultInterceptor {
  DefaultInterceptor({required this.baseUrl});
  final String baseUrl;

  Interceptor interceptor() {
    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };

    return Interceptor(onRequest: (request) async {
      final finalHeader = <String, String>{}
        ..addAll(headers)
        ..addAll(request.headers);

      final newRequest = Request(
          headers: finalHeader,
          queryParameters: request.queryParameters,
          method: request.method,
          url: URLProvider(baseUrl: baseUrl, path: request.url.toString()).url(),
          encoding: Encoding.getByName("utf-8"),
          body: request.body);

      log(name: "Actual url:", newRequest.url.toString());
      log(name: "Actual body:", newRequest.body.toString());
      return newRequest;
    }, onResponse: (apiResponse) async {
      log(name: "Actual Response:", apiResponse.asString);

      final responseJson = json.decode(apiResponse.asString);
      final response = ErrorDecodable.fromJson(responseJson);
      if ((response.processResult == true) && (response.errorList?.isEmpty ?? true)) {
        return apiResponse;
      } else {
        final errorMessage = response.errorList?.isNotEmpty ?? false
            ? response.errorList!.first.errorMessage
            : "Something went wrong. Contact customer support.";
        throw Exception(errorMessage);
      }
    });
  }
}
