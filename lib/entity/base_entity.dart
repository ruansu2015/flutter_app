import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class BaseEntity<T> {
  bool ok;
  T result;
  String status, message, errorCode;

  BaseEntity<T> fromJson(Map<String, dynamic> json) {
    if (json['ok'] != null) ok = json['ok'];
    if (json['result'] != null)
      result = JsonConvert.fromJsonAsT<T>(json['result']);
    if (json['status'] != null) status = json['status'].toString();
    if (json['message'] != null) message = json['message'].toString();
    if (json['errorCode'] != null) errorCode = json['errorCode'].toString();
    return this;
  }
}
