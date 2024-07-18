extension ExceptionExtension on Exception {
  String get exceptionMessage => getMesssage();

  String getMesssage() {
    final exceptionMessage = toString();

    if (exceptionMessage.contains("Exception")) {
      if (exceptionMessage == "Exception") {
        return "Something went wrong. Contact customer support.";
      } else {
        return exceptionMessage.toString().substring(11);
      }
    } else {
      return exceptionMessage;
    }
  }
}
