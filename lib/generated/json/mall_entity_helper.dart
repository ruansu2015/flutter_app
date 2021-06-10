import 'package:flutterapp/entity/mall_entity.dart';

mallEntityFromJson(MallEntity data, Map<String, dynamic> json) {
	if (json['newWebsite'] != null) {
		data.newWebsite = MallNewWebsite().fromJson(json['newWebsite']);
	}
	if (json['mallPlateContentBeanList'] != null) {
		data.mallPlateContentBeanList = (json['mallPlateContentBeanList'] as List).map((v) => MallMallPlateContentBeanList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> mallEntityToJson(MallEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['newWebsite'] = entity.newWebsite?.toJson();
	data['mallPlateContentBeanList'] =  entity.mallPlateContentBeanList?.map((v) => v.toJson())?.toList();
	return data;
}

mallNewWebsiteFromJson(MallNewWebsite data, Map<String, dynamic> json) {
	if (json['siteId'] != null) {
		data.siteId = json['siteId'] is String
				? int.tryParse(json['siteId'])
				: json['siteId'].toInt();
	}
	if (json['channelType'] != null) {
		data.channelType = json['channelType'] is String
				? int.tryParse(json['channelType'])
				: json['channelType'].toInt();
	}
	if (json['siteMark'] != null) {
		data.siteMark = json['siteMark'].toString();
	}
	if (json['siteName'] != null) {
		data.siteName = json['siteName'].toString();
	}
	if (json['siteUrl'] != null) {
		data.siteUrl = json['siteUrl'].toString();
	}
	if (json['iconUrl'] != null) {
		data.iconUrl = json['iconUrl'].toString();
	}
	if (json['isShow'] != null) {
		data.isShow = json['isShow'] is String
				? int.tryParse(json['isShow'])
				: json['isShow'].toInt();
	}
	if (json['siteSort'] != null) {
		data.siteSort = json['siteSort'] is String
				? int.tryParse(json['siteSort'])
				: json['siteSort'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['createUser'] != null) {
		data.createUser = json['createUser'].toString();
	}
	if (json['createDate'] != null) {
		data.createDate = json['createDate'].toString();
	}
	if (json['lastUpdateUser'] != null) {
		data.lastUpdateUser = json['lastUpdateUser'].toString();
	}
	if (json['lastUpdateDate'] != null) {
		data.lastUpdateDate = json['lastUpdateDate'].toString();
	}
	if (json['channelCode'] != null) {
		data.channelCode = json['channelCode'].toString();
	}
	if (json['sid'] != null) {
		data.sid = json['sid'] is String
				? int.tryParse(json['sid'])
				: json['sid'].toInt();
	}
	return data;
}

Map<String, dynamic> mallNewWebsiteToJson(MallNewWebsite entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['siteId'] = entity.siteId;
	data['channelType'] = entity.channelType;
	data['siteMark'] = entity.siteMark;
	data['siteName'] = entity.siteName;
	data['siteUrl'] = entity.siteUrl;
	data['iconUrl'] = entity.iconUrl;
	data['isShow'] = entity.isShow;
	data['siteSort'] = entity.siteSort;
	data['status'] = entity.status;
	data['createUser'] = entity.createUser;
	data['createDate'] = entity.createDate;
	data['lastUpdateUser'] = entity.lastUpdateUser;
	data['lastUpdateDate'] = entity.lastUpdateDate;
	data['channelCode'] = entity.channelCode;
	data['sid'] = entity.sid;
	return data;
}

mallMallPlateContentBeanListFromJson(MallMallPlateContentBeanList data, Map<String, dynamic> json) {
	if (json['mallPlate'] != null) {
		data.mallPlate = MallMallPlateContentBeanListMallPlate().fromJson(json['mallPlate']);
	}
	if (json['mallPlateTemplate'] != null) {
		data.mallPlateTemplate = MallMallPlateContentBeanListMallPlateTemplate().fromJson(json['mallPlateTemplate']);
	}
	if (json['mallPlateContentList'] != null) {
		data.mallPlateContentList = (json['mallPlateContentList'] as List).map((v) => MallMallPlateContentBeanListMallPlateContentList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> mallMallPlateContentBeanListToJson(MallMallPlateContentBeanList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mallPlate'] = entity.mallPlate?.toJson();
	data['mallPlateTemplate'] = entity.mallPlateTemplate?.toJson();
	data['mallPlateContentList'] =  entity.mallPlateContentList?.map((v) => v.toJson())?.toList();
	return data;
}

mallMallPlateContentBeanListMallPlateFromJson(MallMallPlateContentBeanListMallPlate data, Map<String, dynamic> json) {
	if (json['plateId'] != null) {
		data.plateId = json['plateId'] is String
				? int.tryParse(json['plateId'])
				: json['plateId'].toInt();
	}
	if (json['siteId'] != null) {
		data.siteId = json['siteId'] is String
				? int.tryParse(json['siteId'])
				: json['siteId'].toInt();
	}
	if (json['templateId'] != null) {
		data.templateId = json['templateId'] is String
				? int.tryParse(json['templateId'])
				: json['templateId'].toInt();
	}
	if (json['plateCode'] != null) {
		data.plateCode = json['plateCode'].toString();
	}
	if (json['plateName'] != null) {
		data.plateName = json['plateName'].toString();
	}
	if (json['plateTitle'] != null) {
		data.plateTitle = json['plateTitle'].toString();
	}
	if (json['tagName'] != null) {
		data.tagName = json['tagName'].toString();
	}
	if (json['hotspotName'] != null) {
		data.hotspotName = json['hotspotName'].toString();
	}
	if (json['groupId'] != null) {
		data.groupId = json['groupId'] is String
				? int.tryParse(json['groupId'])
				: json['groupId'].toInt();
	}
	if (json['parentPlateId'] != null) {
		data.parentPlateId = json['parentPlateId'] is String
				? int.tryParse(json['parentPlateId'])
				: json['parentPlateId'].toInt();
	}
	if (json['styleName'] != null) {
		data.styleName = json['styleName'].toString();
	}
	if (json['backColor'] != null) {
		data.backColor = json['backColor'].toString();
	}
	if (json['channelType'] != null) {
		data.channelType = json['channelType'] is String
				? int.tryParse(json['channelType'])
				: json['channelType'].toInt();
	}
	if (json['interimType'] != null) {
		data.interimType = json['interimType'] is String
				? int.tryParse(json['interimType'])
				: json['interimType'].toInt();
	}
	if (json['plateType'] != null) {
		data.plateType = json['plateType'] is String
				? int.tryParse(json['plateType'])
				: json['plateType'].toInt();
	}
	if (json['sort'] != null) {
		data.sort = json['sort'] is String
				? int.tryParse(json['sort'])
				: json['sort'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['createUser'] != null) {
		data.createUser = json['createUser'].toString();
	}
	if (json['createDate'] != null) {
		data.createDate = json['createDate'].toString();
	}
	if (json['lastUpdateUser'] != null) {
		data.lastUpdateUser = json['lastUpdateUser'].toString();
	}
	if (json['lastUpdateDate'] != null) {
		data.lastUpdateDate = json['lastUpdateDate'].toString();
	}
	return data;
}

Map<String, dynamic> mallMallPlateContentBeanListMallPlateToJson(MallMallPlateContentBeanListMallPlate entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['plateId'] = entity.plateId;
	data['siteId'] = entity.siteId;
	data['templateId'] = entity.templateId;
	data['plateCode'] = entity.plateCode;
	data['plateName'] = entity.plateName;
	data['plateTitle'] = entity.plateTitle;
	data['tagName'] = entity.tagName;
	data['hotspotName'] = entity.hotspotName;
	data['groupId'] = entity.groupId;
	data['parentPlateId'] = entity.parentPlateId;
	data['styleName'] = entity.styleName;
	data['backColor'] = entity.backColor;
	data['channelType'] = entity.channelType;
	data['interimType'] = entity.interimType;
	data['plateType'] = entity.plateType;
	data['sort'] = entity.sort;
	data['status'] = entity.status;
	data['createUser'] = entity.createUser;
	data['createDate'] = entity.createDate;
	data['lastUpdateUser'] = entity.lastUpdateUser;
	data['lastUpdateDate'] = entity.lastUpdateDate;
	return data;
}

mallMallPlateContentBeanListMallPlateTemplateFromJson(MallMallPlateContentBeanListMallPlateTemplate data, Map<String, dynamic> json) {
	if (json['templateId'] != null) {
		data.templateId = json['templateId'] is String
				? int.tryParse(json['templateId'])
				: json['templateId'].toInt();
	}
	if (json['templateCode'] != null) {
		data.templateCode = json['templateCode'].toString();
	}
	if (json['templateName'] != null) {
		data.templateName = json['templateName'].toString();
	}
	if (json['imageUrl'] != null) {
		data.imageUrl = json['imageUrl'].toString();
	}
	if (json['tone'] != null) {
		data.tone = json['tone'].toString();
	}
	if (json['width'] != null) {
		data.width = json['width'] is String
				? int.tryParse(json['width'])
				: json['width'].toInt();
	}
	if (json['plateContentNum'] != null) {
		data.plateContentNum = json['plateContentNum'].toString();
	}
	if (json['titleArea'] != null) {
		data.titleArea = json['titleArea'] is String
				? int.tryParse(json['titleArea'])
				: json['titleArea'].toInt();
	}
	if (json['titleHeight'] != null) {
		data.titleHeight = json['titleHeight'] is String
				? int.tryParse(json['titleHeight'])
				: json['titleHeight'].toInt();
	}
	if (json['titleColor'] != null) {
		data.titleColor = json['titleColor'].toString();
	}
	if (json['height'] != null) {
		data.height = json['height'] is String
				? int.tryParse(json['height'])
				: json['height'].toInt();
	}
	if (json['strokeSize'] != null) {
		data.strokeSize = json['strokeSize'].toString();
	}
	if (json['footDistance'] != null) {
		data.footDistance = json['footDistance'] is String
				? int.tryParse(json['footDistance'])
				: json['footDistance'].toInt();
	}
	if (json['headlineState'] != null) {
		data.headlineState = json['headlineState'] is String
				? int.tryParse(json['headlineState'])
				: json['headlineState'].toInt();
	}
	if (json['coordinate'] != null) {
		data.coordinate = json['coordinate'].toString();
	}
	if (json['plateType'] != null) {
		data.plateType = json['plateType'] is String
				? int.tryParse(json['plateType'])
				: json['plateType'].toInt();
	}
	if (json['sort'] != null) {
		data.sort = json['sort'] is String
				? int.tryParse(json['sort'])
				: json['sort'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['createUser'] != null) {
		data.createUser = json['createUser'].toString();
	}
	if (json['createDate'] != null) {
		data.createDate = json['createDate'].toString();
	}
	if (json['lastUpdateUser'] != null) {
		data.lastUpdateUser = json['lastUpdateUser'].toString();
	}
	if (json['lastUpdateDate'] != null) {
		data.lastUpdateDate = json['lastUpdateDate'].toString();
	}
	return data;
}

Map<String, dynamic> mallMallPlateContentBeanListMallPlateTemplateToJson(MallMallPlateContentBeanListMallPlateTemplate entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['templateId'] = entity.templateId;
	data['templateCode'] = entity.templateCode;
	data['templateName'] = entity.templateName;
	data['imageUrl'] = entity.imageUrl;
	data['tone'] = entity.tone;
	data['width'] = entity.width;
	data['plateContentNum'] = entity.plateContentNum;
	data['titleArea'] = entity.titleArea;
	data['titleHeight'] = entity.titleHeight;
	data['titleColor'] = entity.titleColor;
	data['height'] = entity.height;
	data['strokeSize'] = entity.strokeSize;
	data['footDistance'] = entity.footDistance;
	data['headlineState'] = entity.headlineState;
	data['coordinate'] = entity.coordinate;
	data['plateType'] = entity.plateType;
	data['sort'] = entity.sort;
	data['status'] = entity.status;
	data['createUser'] = entity.createUser;
	data['createDate'] = entity.createDate;
	data['lastUpdateUser'] = entity.lastUpdateUser;
	data['lastUpdateDate'] = entity.lastUpdateDate;
	return data;
}

mallMallPlateContentBeanListMallPlateContentListFromJson(MallMallPlateContentBeanListMallPlateContentList data, Map<String, dynamic> json) {
	if (json['contentId'] != null) {
		data.contentId = json['contentId'] is String
				? int.tryParse(json['contentId'])
				: json['contentId'].toInt();
	}
	if (json['plateType'] != null) {
		data.plateType = json['plateType'] is String
				? int.tryParse(json['plateType'])
				: json['plateType'].toInt();
	}
	if (json['contentName'] != null) {
		data.contentName = json['contentName'].toString();
	}
	if (json['exName'] != null) {
		data.exName = json['exName'].toString();
	}
	if (json['styleName'] != null) {
		data.styleName = json['styleName'].toString();
	}
	if (json['imageUrl'] != null) {
		data.imageUrl = json['imageUrl'].toString();
	}
	if (json['imagePx'] != null) {
		data.imagePx = json['imagePx'].toString();
	}
	if (json['recomKey'] != null) {
		data.recomKey = json['recomKey'].toString();
	}
	if (json['recomCategory'] != null) {
		data.recomCategory = json['recomCategory'].toString();
	}
	if (json['recomBrand'] != null) {
		data.recomBrand = json['recomBrand'].toString();
	}
	if (json['recomBrandCode'] != null) {
		data.recomBrandCode = json['recomBrandCode'].toString();
	}
	if (json['urlWebsite'] != null) {
		data.urlWebsite = json['urlWebsite'].toString();
	}
	if (json['ipadUrl'] != null) {
		data.ipadUrl = json['ipadUrl'].toString();
	}
	if (json['isNeedLazyload'] != null) {
		data.isNeedLazyload = json['isNeedLazyload'] is String
				? int.tryParse(json['isNeedLazyload'])
				: json['isNeedLazyload'].toInt();
	}
	if (json['startDate'] != null) {
		data.startDate = json['startDate'].toString();
	}
	if (json['endDate'] != null) {
		data.endDate = json['endDate'].toString();
	}
	if (json['sort'] != null) {
		data.sort = json['sort'] is String
				? int.tryParse(json['sort'])
				: json['sort'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['createUser'] != null) {
		data.createUser = json['createUser'].toString();
	}
	if (json['createDate'] != null) {
		data.createDate = json['createDate'].toString();
	}
	if (json['lastUpdateUser'] != null) {
		data.lastUpdateUser = json['lastUpdateUser'].toString();
	}
	if (json['lastUpdateDate'] != null) {
		data.lastUpdateDate = json['lastUpdateDate'].toString();
	}
	if (json['recomGoods'] != null) {
		data.recomGoods = json['recomGoods'].toString();
	}
	return data;
}

Map<String, dynamic> mallMallPlateContentBeanListMallPlateContentListToJson(MallMallPlateContentBeanListMallPlateContentList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['contentId'] = entity.contentId;
	data['plateType'] = entity.plateType;
	data['contentName'] = entity.contentName;
	data['exName'] = entity.exName;
	data['styleName'] = entity.styleName;
	data['imageUrl'] = entity.imageUrl;
	data['imagePx'] = entity.imagePx;
	data['recomKey'] = entity.recomKey;
	data['recomCategory'] = entity.recomCategory;
	data['recomBrand'] = entity.recomBrand;
	data['recomBrandCode'] = entity.recomBrandCode;
	data['urlWebsite'] = entity.urlWebsite;
	data['ipadUrl'] = entity.ipadUrl;
	data['isNeedLazyload'] = entity.isNeedLazyload;
	data['startDate'] = entity.startDate;
	data['endDate'] = entity.endDate;
	data['sort'] = entity.sort;
	data['status'] = entity.status;
	data['createUser'] = entity.createUser;
	data['createDate'] = entity.createDate;
	data['lastUpdateUser'] = entity.lastUpdateUser;
	data['lastUpdateDate'] = entity.lastUpdateDate;
	data['recomGoods'] = entity.recomGoods;
	return data;
}