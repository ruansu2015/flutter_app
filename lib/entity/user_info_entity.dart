import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class UserInfoEntity with JsonConvert<UserInfoEntity> {
	String uid;
	String mobile;
	String nickname;
	int birthday;
	int sex;
	String comefrom;
	int levelid;
	int regTime;
	int lastTime;
	int yfuserId;
	int isActive;
	double points;
	int rankPoints;
	int pointStatus;
	int nextLevelPoints;
	int growvalue;
	String bgCardNo;
	bool bindBgPay;
	int packageCount;
	int couponCount;
	int freeCardCount;
	int packageLastDate;
	int couponLastDate;
	int freeLastDate;
	int collectionGoodsCount;
	int collectionBrandCount;
	int browsinHistory;
	UserInfoOrderStatusCountMap orderStatusCountMap;
	String avatarUrl;
	String email;
}

class UserInfoOrderStatusCountMap with JsonConvert<UserInfoOrderStatusCountMap> {
	int waitComment;
	int refundCount;
	int waitReceiveCount;
	int waitShipCount;
	int waitPayCount;
}
