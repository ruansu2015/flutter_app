import 'package:flutterapp/entity/login_entity.dart';

loginEntityFromJson(LoginEntity data, Map<String, dynamic> json) {
	if (json['userStatus'] != null) {
		data.userStatus = json['userStatus'].toString();
	}
	if (json['lastLoginChannel'] != null) {
		data.lastLoginChannel = json['lastLoginChannel'].toString();
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

Map<String, dynamic> loginEntityToJson(LoginEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['userStatus'] = entity.userStatus;
	data['lastLoginChannel'] = entity.lastLoginChannel;
	data['userType'] = entity.userType;
	data['userId'] = entity.userId;
	data['token'] = entity.token;
	return data;
}