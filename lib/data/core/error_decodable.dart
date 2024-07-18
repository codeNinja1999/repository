T? tryCast<T>(dynamic object) => object is T ? object : null;

class ErrorDecodable {
  ErrorDecodable({
    this.processResult,
    this.errorDescription,
    this.errorList,
  });

  bool? processResult;
  String? errorDescription;

  List<ErrorList>? errorList;

  factory ErrorDecodable.fromJson(Map<String, dynamic> json) => ErrorDecodable(
        processResult: (tryCast<bool>(json["process_result"])),
        errorDescription: json["error_description"],
        errorList: json["error_list"] == null
            ? null
            : List<ErrorList>.from(
                json["error_list"].map((x) => ErrorList.fromJson(x))),
      );
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
}
