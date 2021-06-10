import 'package:flutterapp/entity/first_level_category_entity.dart';

firstLevelCategoryEntityFromJson(FirstLevelCategoryEntity data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['parentId'] != null) {
		data.parentId = json['parentId'] is String
				? int.tryParse(json['parentId'])
				: json['parentId'].toInt();
	}
	if (json['siteCateName'] != null) {
		data.siteCateName = json['siteCateName'].toString();
	}
	if (json['categoryMarkRed'] != null) {
		data.categoryMarkRed = json['categoryMarkRed'] is String
				? int.tryParse(json['categoryMarkRed'])
				: json['categoryMarkRed'].toInt();
	}
	if (json['productCategoryId'] != null) {
		data.productCategoryId = json['productCategoryId'].toString();
	}
	if (json['siteSex'] != null) {
		data.siteSex = json['siteSex'].toString();
	}
	if (json['brandId'] != null) {
		data.brandId = json['brandId'].toString();
	}
	if (json['brandCode'] != null) {
		data.brandCode = json['brandCode'].toString();
	}
	if (json['siteUrl'] != null) {
		data.siteUrl = json['siteUrl'].toString();
	}
	if (json['crumb'] != null) {
		data.crumb = json['crumb'].toString();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['createTime'] != null) {
		data.createTime = json['createTime'].toString();
	}
	if (json['updateTime'] != null) {
		data.updateTime = json['updateTime'].toString();
	}
	if (json['sort'] != null) {
		data.sort = json['sort'] is String
				? int.tryParse(json['sort'])
				: json['sort'].toInt();
	}
	if (json['icon'] != null) {
		data.icon = json['icon'].toString();
	}
	if (json['imgPx'] != null) {
		data.imgPx = json['imgPx'].toString();
	}
	if (json['wordAdMark'] != null) {
		data.wordAdMark = json['wordAdMark'].toString();
	}
	if (json['imgAdMark'] != null) {
		data.imgAdMark = json['imgAdMark'].toString();
	}
	if (json['bdAdMark'] != null) {
		data.bdAdMark = json['bdAdMark'].toString();
	}
	if (json['urlType'] != null) {
		data.urlType = json['urlType'] is String
				? int.tryParse(json['urlType'])
				: json['urlType'].toInt();
	}
	if (json['urlTypeId'] != null) {
		data.urlTypeId = json['urlTypeId'].toString();
	}
	if (json['channelCode'] != null) {
		data.channelCode = json['channelCode'].toString();
	}
	if (json['relBrandCode'] != null) {
		data.relBrandCode = json['relBrandCode'].toString();
	}
	if (json['channelType'] != null) {
		data.channelType = json['channelType'] is String
				? int.tryParse(json['channelType'])
				: json['channelType'].toInt();
	}
	if (json['sid'] != null) {
		data.sid = json['sid'] is String
				? int.tryParse(json['sid'])
				: json['sid'].toInt();
	}
	return data;
}

Map<String, dynamic> firstLevelCategoryEntityToJson(FirstLevelCategoryEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['parentId'] = entity.parentId;
	data['siteCateName'] = entity.siteCateName;
	data['categoryMarkRed'] = entity.categoryMarkRed;
	data['productCategoryId'] = entity.productCategoryId;
	data['siteSex'] = entity.siteSex;
	data['brandId'] = entity.brandId;
	data['brandCode'] = entity.brandCode;
	data['siteUrl'] = entity.siteUrl;
	data['crumb'] = entity.crumb;
	data['status'] = entity.status;
	data['createTime'] = entity.createTime;
	data['updateTime'] = entity.updateTime;
	data['sort'] = entity.sort;
	data['icon'] = entity.icon;
	data['imgPx'] = entity.imgPx;
	data['wordAdMark'] = entity.wordAdMark;
	data['imgAdMark'] = entity.imgAdMark;
	data['bdAdMark'] = entity.bdAdMark;
	data['urlType'] = entity.urlType;
	data['urlTypeId'] = entity.urlTypeId;
	data['channelCode'] = entity.channelCode;
	data['relBrandCode'] = entity.relBrandCode;
	data['channelType'] = entity.channelType;
	data['sid'] = entity.sid;
	return data;
}