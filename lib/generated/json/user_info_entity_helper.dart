import 'package:flutterapp/entity/user_info_entity.dart';

userInfoEntityFromJson(UserInfoEntity data, Map<String, dynamic> json) {
	if (json['uid'] != null) {
		data.uid = json['uid'].toString();
	}
	if (json['mobile'] != null) {
		data.mobile = json['mobile'].toString();
	}
	if (json['nickname'] != null) {
		data.nickname = json['nickname'].toString();
	}
	if (json['birthday'] != null) {
		data.birthday = json['birthday'] is String
				? int.tryParse(json['birthday'])
				: json['birthday'].toInt();
	}
	if (json['sex'] != null) {
		data.sex = json['sex'] is String
				? int.tryParse(json['sex'])
				: json['sex'].toInt();
	}
	if (json['comefrom'] != null) {
		data.comefrom = json['comefrom'].toString();
	}
	if (json['levelid'] != null) {
		data.levelid = json['levelid'] is String
				? int.tryParse(json['levelid'])
				: json['levelid'].toInt();
	}
	if (json['regTime'] != null) {
		data.regTime = json['regTime'] is String
				? int.tryParse(json['regTime'])
				: json['regTime'].toInt();
	}
	if (json['lastTime'] != null) {
		data.lastTime = json['lastTime'] is String
				? int.tryParse(json['lastTime'])
				: json['lastTime'].toInt();
	}
	if (json['yfuserId'] != null) {
		data.yfuserId = json['yfuserId'] is String
				? int.tryParse(json['yfuserId'])
				: json['yfuserId'].toInt();
	}
	if (json['isActive'] != null) {
		data.isActive = json['isActive'] is String
				? int.tryParse(json['isActive'])
				: json['isActive'].toInt();
	}
	if (json['points'] != null) {
		data.points = json['points'] is String
				? double.tryParse(json['points'])
				: json['points'].toDouble();
	}
	if (json['rankPoints'] != null) {
		data.rankPoints = json['rankPoints'] is String
				? int.tryParse(json['rankPoints'])
				: json['rankPoints'].toInt();
	}
	if (json['pointStatus'] != null) {
		data.pointStatus = json['pointStatus'] is String
				? int.tryParse(json['pointStatus'])
				: json['pointStatus'].toInt();
	}
	if (json['nextLevelPoints'] != null) {
		data.nextLevelPoints = json['nextLevelPoints'] is String
				? int.tryParse(json['nextLevelPoints'])
				: json['nextLevelPoints'].toInt();
	}
	if (json['growvalue'] != null) {
		data.growvalue = json['growvalue'] is String
				? int.tryParse(json['growvalue'])
				: json['growvalue'].toInt();
	}
	if (json['bgCardNo'] != null) {
		data.bgCardNo = json['bgCardNo'].toString();
	}
	if (json['bindBgPay'] != null) {
		data.bindBgPay = json['bindBgPay'];
	}
	if (json['packageCount'] != null) {
		data.packageCount = json['packageCount'] is String
				? int.tryParse(json['packageCount'])
				: json['packageCount'].toInt();
	}
	if (json['couponCount'] != null) {
		data.couponCount = json['couponCount'] is String
				? int.tryParse(json['couponCount'])
				: json['couponCount'].toInt();
	}
	if (json['freeCardCount'] != null) {
		data.freeCardCount = json['freeCardCount'] is String
				? int.tryParse(json['freeCardCount'])
				: json['freeCardCount'].toInt();
	}
	if (json['packageLastDate'] != null) {
		data.packageLastDate = json['packageLastDate'] is String
				? int.tryParse(json['packageLastDate'])
				: json['packageLastDate'].toInt();
	}
	if (json['couponLastDate'] != null) {
		data.couponLastDate = json['couponLastDate'] is String
				? int.tryParse(json['couponLastDate'])
				: json['couponLastDate'].toInt();
	}
	if (json['freeLastDate'] != null) {
		data.freeLastDate = json['freeLastDate'] is String
				? int.tryParse(json['freeLastDate'])
				: json['freeLastDate'].toInt();
	}
	if (json['collectionGoodsCount'] != null) {
		data.collectionGoodsCount = json['collectionGoodsCount'] is String
				? int.tryParse(json['collectionGoodsCount'])
				: json['collectionGoodsCount'].toInt();
	}
	if (json['collectionBrandCount'] != null) {
		data.collectionBrandCount = json['collectionBrandCount'] is String
				? int.tryParse(json['collectionBrandCount'])
				: json['collectionBrandCount'].toInt();
	}
	if (json['browsinHistory'] != null) {
		data.browsinHistory = json['browsinHistory'] is String
				? int.tryParse(json['browsinHistory'])
				: json['browsinHistory'].toInt();
	}
	if (json['orderStatusCountMap'] != null) {
		data.orderStatusCountMap = UserInfoOrderStatusCountMap().fromJson(json['orderStatusCountMap']);
	}
	if (json['avatarUrl'] != null) {
		data.avatarUrl = json['avatarUrl'].toString();
	}
	if (json['email'] != null) {
		data.email = json['email'].toString();
	}
	return data;
}

Map<String, dynamic> userInfoEntityToJson(UserInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['uid'] = entity.uid;
	data['mobile'] = entity.mobile;
	data['nickname'] = entity.nickname;
	data['birthday'] = entity.birthday;
	data['sex'] = entity.sex;
	data['comefrom'] = entity.comefrom;
	data['levelid'] = entity.levelid;
	data['regTime'] = entity.regTime;
	data['lastTime'] = entity.lastTime;
	data['yfuserId'] = entity.yfuserId;
	data['isActive'] = entity.isActive;
	data['points'] = entity.points;
	data['rankPoints'] = entity.rankPoints;
	data['pointStatus'] = entity.pointStatus;
	data['nextLevelPoints'] = entity.nextLevelPoints;
	data['growvalue'] = entity.growvalue;
	data['bgCardNo'] = entity.bgCardNo;
	data['bindBgPay'] = entity.bindBgPay;
	data['packageCount'] = entity.packageCount;
	data['couponCount'] = entity.couponCount;
	data['freeCardCount'] = entity.freeCardCount;
	data['packageLastDate'] = entity.packageLastDate;
	data['couponLastDate'] = entity.couponLastDate;
	data['freeLastDate'] = entity.freeLastDate;
	data['collectionGoodsCount'] = entity.collectionGoodsCount;
	data['collectionBrandCount'] = entity.collectionBrandCount;
	data['browsinHistory'] = entity.browsinHistory;
	data['orderStatusCountMap'] = entity.orderStatusCountMap?.toJson();
	data['avatarUrl'] = entity.avatarUrl;
	data['email'] = entity.email;
	return data;
}

userInfoOrderStatusCountMapFromJson(UserInfoOrderStatusCountMap data, Map<String, dynamic> json) {
	if (json['waitComment'] != null) {
		data.waitComment = json['waitComment'] is String
				? int.tryParse(json['waitComment'])
				: json['waitComment'].toInt();
	}
	if (json['refundCount'] != null) {
		data.refundCount = json['refundCount'] is String
				? int.tryParse(json['refundCount'])
				: json['refundCount'].toInt();
	}
	if (json['waitReceiveCount'] != null) {
		data.waitReceiveCount = json['waitReceiveCount'] is String
				? int.tryParse(json['waitReceiveCount'])
				: json['waitReceiveCount'].toInt();
	}
	if (json['waitShipCount'] != null) {
		data.waitShipCount = json['waitShipCount'] is String
				? int.tryParse(json['waitShipCount'])
				: json['waitShipCount'].toInt();
	}
	if (json['waitPayCount'] != null) {
		data.waitPayCount = json['waitPayCount'] is String
				? int.tryParse(json['waitPayCount'])
				: json['waitPayCount'].toInt();
	}
	return data;
}

Map<String, dynamic> userInfoOrderStatusCountMapToJson(UserInfoOrderStatusCountMap entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['waitComment'] = entity.waitComment;
	data['refundCount'] = entity.refundCount;
	data['waitReceiveCount'] = entity.waitReceiveCount;
	data['waitShipCount'] = entity.waitShipCount;
	data['waitPayCount'] = entity.waitPayCount;
	return data;
}