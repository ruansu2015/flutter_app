import 'package:flutterapp/entity/login_result_entity.dart';

loginResultEntityFromJson(LoginResultEntity data, Map<String, dynamic> json) {
	if (json['userStatus'] != null) {
		data.userStatus = json['userStatus'].toString();
	}
	if (json['userType'] != null) {
		data.userType = json['userType'].toString();
	}
	if (json['userId'] != null) {
		data.userId = json['userId'].toString();
	}
	if (json['token'] != null) {
		data.token = json['token'].toString();
	}
	return data;
}

Map<String, dynamic> loginResultEntityToJson(LoginResultEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['userStatus'] = entity.userStatus;
	data['userType'] = entity.userType;
	data['userId'] = entity.userId;
	data['token'] = entity.token;
	return data;
}