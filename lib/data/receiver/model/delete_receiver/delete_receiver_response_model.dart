import 'dart:convert';

DeleteReceiverResponse deleteReceiverResponseFromJson(String str) =>
    DeleteReceiverResponse.fromJson(json.decode(str));

String deleteReceiverResponseToJson(DeleteReceiverResponse data) =>
    json.encode(data.toJson());

class DeleteReceiverResponse {
  DeleteReceiverResponse({
    this.processResult,
    this.warningList,
    this.errorList,
  });

  bool? processResult;
  List<WarningList>? warningList;
  List<ErrorList>? errorList;

  factory DeleteReceiverResponse.fromJson(Map<String, dynamic> json) =>
      DeleteReceiverResponse(
        processResult: json["process_result"],
        warningList: List<WarningList>.from(
            json["warning_list"].map((x) => WarningList.fromJson(x))),
        errorList: List<ErrorList>.from(
            json["error_list"].map((x) => ErrorList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "process_result": processResult,
        "warning_list": List<dynamic>.from(warningList!.map((x) => x.toJson())),
        "error_list": List<dynamic>.from(errorList!.map((x) => x.toJson())),
      };
}

class ErrorList {
  ErrorList({
    this.errorCode,
    this.errorMessage,
  });

  String? errorCode;
  String? errorMessage;

  factory ErrorList.fromJson(Map<String, dynamic> json) => ErrorList(
        errorCode: json["error_code"],
        errorMessage: json["error_message"],
      );

  Map<String, dynamic> toJson() => {
        "error_code": errorCode,
        "error_message": errorMessage,
      };
}

class WarningList {
  WarningList({
    this.warningCode,
    this.warningMessage,
  });

  String? warningCode;
  String? warningMessage;

  factory WarningList.fromJson(Map<String, dynamic> json) => WarningList(
        warningCode: json["warning_code"],
        warningMessage: json["warning_message"],
      );

  Map<String, dynamic> toJson() => {
        "warning_code": warningCode,
        "warning_message": warningMessage,
      };
}
