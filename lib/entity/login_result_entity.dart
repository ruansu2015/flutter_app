import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class LoginResultEntity with JsonConvert<LoginResultEntity> {
  String userStatus;
  String userType;
  String userId;
  String token;
}
