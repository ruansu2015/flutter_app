import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class LoginEntity with JsonConvert<LoginEntity> {
	String userStatus;
	String lastLoginChannel;
	String userType;
	String userId;
	String token;
}
