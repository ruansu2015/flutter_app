import 'package:flutterapp/entity/goods_info_entity.dart';

goodsInfoEntityFromJson(GoodsInfoEntity data, Map<String, dynamic> json) {
	if (json['channelCode'] != null) {
		data.channelCode = json['channelCode'].toString();
	}
	if (json['productSysCode'] != null) {
		data.productSysCode = json['productSysCode'].toString();
	}
	if (json['productName'] != null) {
		data.productName = json['productName'].toString();
	}
	if (json['brandId'] != null) {
		data.brandId = json['brandId'] is String
				? int.tryParse(json['brandId'])
				: json['brandId'].toInt();
	}
	if (json['brandCode'] != null) {
		data.brandCode = json['brandCode'].toString();
	}
	if (json['brandName'] != null) {
		data.brandName = json['brandName'].toString();
	}
	if (json['brandUrl'] != null) {
		data.brandUrl = json['brandUrl'].toString();
	}
	if (json['brandRemark'] != null) {
		data.brandRemark = json['brandRemark'].toString();
	}
	if (json['categoryId'] != null) {
		data.categoryId = json['categoryId'] is String
				? int.tryParse(json['categoryId'])
				: json['categoryId'].toInt();
	}
	if (json['sellPoint'] != null) {
		data.sellPoint = json['sellPoint'].toString();
	}
	if (json['sellerCode'] != null) {
		data.sellerCode = json['sellerCode'].toString();
	}
	if (json['salesMode'] != null) {
		data.salesMode = json['salesMode'] is String
				? int.tryParse(json['salesMode'])
				: json['salesMode'].toInt();
	}
	if (json['galleryList'] != null) {
		data.galleryList = (json['galleryList'] as List).map((v) => GoodsInfoGalleryList().fromJson(v)).toList();
	}
	if (json['marketPrice'] != null) {
		data.marketPrice = json['marketPrice'] is String
				? double.tryParse(json['marketPrice'])
				: json['marketPrice'].toDouble();
	}
	if (json['productUrl'] != null) {
		data.productUrl = json['productUrl'].toString();
	}
	if (json['protectPrice'] != null) {
		data.protectPrice = json['protectPrice'] is String
				? double.tryParse(json['protectPrice'])
				: json['protectPrice'].toDouble();
	}
	if (json['saleAttrList'] != null) {
		data.saleAttrList = GoodsInfoSaleAttrList().fromJson(json['saleAttrList']);
	}
	if (json['salePrice'] != null) {
		data.salePrice = json['salePrice'] is String
				? double.tryParse(json['salePrice'])
				: json['salePrice'].toDouble();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['stockNum'] != null) {
		data.stockNum = json['stockNum'] is String
				? int.tryParse(json['stockNum'])
				: json['stockNum'].toInt();
	}
	if (json['isChange'] != null) {
		data.isChange = json['isChange'];
	}
	if (json['abandonPackages'] != null) {
		data.abandonPackages = json['abandonPackages'] is String
				? int.tryParse(json['abandonPackages'])
				: json['abandonPackages'].toInt();
	}
	if (json['abandonDiscounts'] != null) {
		data.abandonDiscounts = json['abandonDiscounts'] is String
				? int.tryParse(json['abandonDiscounts'])
				: json['abandonDiscounts'].toInt();
	}
	if (json['skuInfo'] != null) {
		data.skuInfo = (json['skuInfo'] as List).map((v) => GoodsInfoSkuInfo().fromJson(v)).toList();
	}
	if (json['isPromotion'] != null) {
		data.isPromotion = json['isPromotion'].toString();
	}
	if (json['isPostFree'] != null) {
		data.isPostFree = json['isPostFree'] is String
				? int.tryParse(json['isPostFree'])
				: json['isPostFree'].toInt();
	}
	if (json['commission'] != null) {
		data.commission = json['commission'] is String
				? double.tryParse(json['commission'])
				: json['commission'].toDouble();
	}
	if (json['promoList'] != null) {
		data.promoList = (json['promoList'] as List).map((v) => GoodsInfoPromoList().fromJson(v)).toList();
	}
	if (json['commentList'] != null) {
		data.commentList = (json['commentList'] as List).map((v) => GoodsInfoCommentList().fromJson(v)).toList();
	}
	if (json['commentCount'] != null) {
		data.commentCount = json['commentCount'] is String
				? int.tryParse(json['commentCount'])
				: json['commentCount'].toInt();
	}
	if (json['productCardInfo'] != null) {
		data.productCardInfo = GoodsInfoProductCardInfo().fromJson(json['productCardInfo']);
	}
	if (json['currentTime'] != null) {
		data.currentTime = json['currentTime'] is String
				? int.tryParse(json['currentTime'])
				: json['currentTime'].toInt();
	}
	if (json['commissionRatio'] != null) {
		data.commissionRatio = json['commissionRatio'] is String
				? double.tryParse(json['commissionRatio'])
				: json['commissionRatio'].toDouble();
	}
	if (json['tagName'] != null) {
		data.tagName = json['tagName'].toString();
	}
	if (json['tagPosition'] != null) {
		data.tagPosition = json['tagPosition'].toString();
	}
	if (json['points'] != null) {
		data.points = json['points'].toString();
	}
	if (json['collectStatus'] != null) {
		data.collectStatus = json['collectStatus'] is String
				? int.tryParse(json['collectStatus'])
				: json['collectStatus'].toInt();
	}
	if (json['saleCountWeek'] != null) {
		data.saleCountWeek = json['saleCountWeek'] is String
				? int.tryParse(json['saleCountWeek'])
				: json['saleCountWeek'].toInt();
	}
	if (json['saleCountMonth'] != null) {
		data.saleCountMonth = json['saleCountMonth'] is String
				? int.tryParse(json['saleCountMonth'])
				: json['saleCountMonth'].toInt();
	}
	if (json['saleCountThreemonth'] != null) {
		data.saleCountThreemonth = json['saleCountThreemonth'] is String
				? int.tryParse(json['saleCountThreemonth'])
				: json['saleCountThreemonth'].toInt();
	}
	if (json['abandonCoupons'] != null) {
		data.abandonCoupons = json['abandonCoupons'] is String
				? int.tryParse(json['abandonCoupons'])
				: json['abandonCoupons'].toInt();
	}
	if (json['abandonIntegral'] != null) {
		data.abandonIntegral = json['abandonIntegral'] is String
				? int.tryParse(json['abandonIntegral'])
				: json['abandonIntegral'].toInt();
	}
	if (json['categoryCrumb'] != null) {
		data.categoryCrumb = json['categoryCrumb'].toString();
	}
	if (json['categoryIdCrumb'] != null) {
		data.categoryIdCrumb = json['categoryIdCrumb'].toString();
	}
	if (json['limitMaxNumber'] != null) {
		data.limitMaxNumber = json['limitMaxNumber'] is String
				? int.tryParse(json['limitMaxNumber'])
				: json['limitMaxNumber'].toInt();
	}
	if (json['limitMinNumber'] != null) {
		data.limitMinNumber = json['limitMinNumber'] is String
				? int.tryParse(json['limitMinNumber'])
				: json['limitMinNumber'].toInt();
	}
	if (json['integralDeductMoney'] != null) {
		data.integralDeductMoney = json['integralDeductMoney'] is String
				? double.tryParse(json['integralDeductMoney'])
				: json['integralDeductMoney'].toDouble();
	}
	if (json['memberPriceArr'] != null) {
		data.memberPriceArr = (json['memberPriceArr'] as List).map((v) => v is String
				? double.tryParse(v)
				: v.toDouble()).toList().cast<double>();
	}
	if (json['levelId'] != null) {
		data.levelId = json['levelId'] is String
				? int.tryParse(json['levelId'])
				: json['levelId'].toInt();
	}
	return data;
}

Map<String, dynamic> goodsInfoEntityToJson(GoodsInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['channelCode'] = entity.channelCode;
	data['productSysCode'] = entity.productSysCode;
	data['productName'] = entity.productName;
	data['brandId'] = entity.brandId;
	data['brandCode'] = entity.brandCode;
	data['brandName'] = entity.brandName;
	data['brandUrl'] = entity.brandUrl;
	data['brandRemark'] = entity.brandRemark;
	data['categoryId'] = entity.categoryId;
	data['sellPoint'] = entity.sellPoint;
	data['sellerCode'] = entity.sellerCode;
	data['salesMode'] = entity.salesMode;
	data['galleryList'] =  entity.galleryList?.map((v) => v.toJson())?.toList();
	data['marketPrice'] = entity.marketPrice;
	data['productUrl'] = entity.productUrl;
	data['protectPrice'] = entity.protectPrice;
	data['saleAttrList'] = entity.saleAttrList?.toJson();
	data['salePrice'] = entity.salePrice;
	data['status'] = entity.status;
	data['stockNum'] = entity.stockNum;
	data['isChange'] = entity.isChange;
	data['abandonPackages'] = entity.abandonPackages;
	data['abandonDiscounts'] = entity.abandonDiscounts;
	data['skuInfo'] =  entity.skuInfo?.map((v) => v.toJson())?.toList();
	data['isPromotion'] = entity.isPromotion;
	data['isPostFree'] = entity.isPostFree;
	data['commission'] = entity.commission;
	data['promoList'] =  entity.promoList?.map((v) => v.toJson())?.toList();
	data['commentList'] =  entity.commentList?.map((v) => v.toJson())?.toList();
	data['commentCount'] = entity.commentCount;
	data['productCardInfo'] = entity.productCardInfo?.toJson();
	data['currentTime'] = entity.currentTime;
	data['commissionRatio'] = entity.commissionRatio;
	data['tagName'] = entity.tagName;
	data['tagPosition'] = entity.tagPosition;
	data['points'] = entity.points;
	data['collectStatus'] = entity.collectStatus;
	data['saleCountWeek'] = entity.saleCountWeek;
	data['saleCountMonth'] = entity.saleCountMonth;
	data['saleCountThreemonth'] = entity.saleCountThreemonth;
	data['abandonCoupons'] = entity.abandonCoupons;
	data['abandonIntegral'] = entity.abandonIntegral;
	data['categoryCrumb'] = entity.categoryCrumb;
	data['categoryIdCrumb'] = entity.categoryIdCrumb;
	data['limitMaxNumber'] = entity.limitMaxNumber;
	data['limitMinNumber'] = entity.limitMinNumber;
	data['integralDeductMoney'] = entity.integralDeductMoney;
	data['memberPriceArr'] = entity.memberPriceArr;
	data['levelId'] = entity.levelId;
	return data;
}

goodsInfoGalleryListFromJson(GoodsInfoGalleryList data, Map<String, dynamic> json) {
	if (json['sellerCode'] != null) {
		data.sellerCode = json['sellerCode'].toString();
	}
	if (json['productSysCode'] != null) {
		data.productSysCode = json['productSysCode'].toString();
	}
	if (json['imageUrl'] != null) {
		data.imageUrl = json['imageUrl'].toString();
	}
	if (json['imageName'] != null) {
		data.imageName = json['imageName'].toString();
	}
	if (json['imageType'] != null) {
		data.imageType = json['imageType'] is String
				? int.tryParse(json['imageType'])
				: json['imageType'].toInt();
	}
	if (json['colorCode'] != null) {
		data.colorCode = json['colorCode'].toString();
	}
	return data;
}

Map<String, dynamic> goodsInfoGalleryListToJson(GoodsInfoGalleryList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sellerCode'] = entity.sellerCode;
	data['productSysCode'] = entity.productSysCode;
	data['imageUrl'] = entity.imageUrl;
	data['imageName'] = entity.imageName;
	data['imageType'] = entity.imageType;
	data['colorCode'] = entity.colorCode;
	return data;
}

goodsInfoSaleAttrListFromJson(GoodsInfoSaleAttrList data, Map<String, dynamic> json) {
	if (json['saleAttr1List'] != null) {
		data.saleAttr1List = (json['saleAttr1List'] as List).map((v) => GoodsInfoSaleAttrListSaleAttr1List().fromJson(v)).toList();
	}
	if (json['saleAttr2List'] != null) {
		data.saleAttr2List = (json['saleAttr2List'] as List).map((v) => GoodsInfoSaleAttrListSaleAttr2List().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> goodsInfoSaleAttrListToJson(GoodsInfoSaleAttrList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['saleAttr1List'] =  entity.saleAttr1List?.map((v) => v.toJson())?.toList();
	data['saleAttr2List'] =  entity.saleAttr2List?.map((v) => v.toJson())?.toList();
	return data;
}

goodsInfoSaleAttrListSaleAttr1ListFromJson(GoodsInfoSaleAttrListSaleAttr1List data, Map<String, dynamic> json) {
	if (json['imageUrl'] != null) {
		data.imageUrl = json['imageUrl'].toString();
	}
	if (json['saleAttr1Key'] != null) {
		data.saleAttr1Key = json['saleAttr1Key'].toString();
	}
	if (json['saleAttr1Value'] != null) {
		data.saleAttr1Value = json['saleAttr1Value'].toString();
	}
	if (json['saleAttr1ValueCode'] != null) {
		data.saleAttr1ValueCode = json['saleAttr1ValueCode'].toString();
	}
	if (json['stockNum'] != null) {
		data.stockNum = json['stockNum'] is String
				? int.tryParse(json['stockNum'])
				: json['stockNum'].toInt();
	}
	if (json['barcodeSysCode'] != null) {
		data.barcodeSysCode = json['barcodeSysCode'].toString();
	}
	return data;
}

Map<String, dynamic> goodsInfoSaleAttrListSaleAttr1ListToJson(GoodsInfoSaleAttrListSaleAttr1List entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['imageUrl'] = entity.imageUrl;
	data['saleAttr1Key'] = entity.saleAttr1Key;
	data['saleAttr1Value'] = entity.saleAttr1Value;
	data['saleAttr1ValueCode'] = entity.saleAttr1ValueCode;
	data['stockNum'] = entity.stockNum;
	data['barcodeSysCode'] = entity.barcodeSysCode;
	return data;
}

goodsInfoSaleAttrListSaleAttr2ListFromJson(GoodsInfoSaleAttrListSaleAttr2List data, Map<String, dynamic> json) {
	if (json['saleAttr2Key'] != null) {
		data.saleAttr2Key = json['saleAttr2Key'].toString();
	}
	if (json['saleAttr2ValueCode'] != null) {
		data.saleAttr2ValueCode = json['saleAttr2ValueCode'].toString();
	}
	if (json['saleAttr2Value'] != null) {
		data.saleAttr2Value = json['saleAttr2Value'].toString();
	}
	if (json['stockNum'] != null) {
		data.stockNum = json['stockNum'] is String
				? int.tryParse(json['stockNum'])
				: json['stockNum'].toInt();
	}
	if (json['barcodeSysCode'] != null) {
		data.barcodeSysCode = json['barcodeSysCode'].toString();
	}
	return data;
}

Map<String, dynamic> goodsInfoSaleAttrListSaleAttr2ListToJson(GoodsInfoSaleAttrListSaleAttr2List entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['saleAttr2Key'] = entity.saleAttr2Key;
	data['saleAttr2ValueCode'] = entity.saleAttr2ValueCode;
	data['saleAttr2Value'] = entity.saleAttr2Value;
	data['stockNum'] = entity.stockNum;
	data['barcodeSysCode'] = entity.barcodeSysCode;
	return data;
}

goodsInfoSkuInfoFromJson(GoodsInfoSkuInfo data, Map<String, dynamic> json) {
	if (json['saleAttr2ValueCode'] != null) {
		data.saleAttr2ValueCode = json['saleAttr2ValueCode'].toString();
	}
	if (json['stockNum'] != null) {
		data.stockNum = json['stockNum'] is String
				? int.tryParse(json['stockNum'])
				: json['stockNum'].toInt();
	}
	if (json['barcodeSysCode'] != null) {
		data.barcodeSysCode = json['barcodeSysCode'].toString();
	}
	if (json['saleAttr1ValueCode'] != null) {
		data.saleAttr1ValueCode = json['saleAttr1ValueCode'].toString();
	}
	return data;
}

Map<String, dynamic> goodsInfoSkuInfoToJson(GoodsInfoSkuInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['saleAttr2ValueCode'] = entity.saleAttr2ValueCode;
	data['stockNum'] = entity.stockNum;
	data['barcodeSysCode'] = entity.barcodeSysCode;
	data['saleAttr1ValueCode'] = entity.saleAttr1ValueCode;
	return data;
}

goodsInfoPromoListFromJson(GoodsInfoPromoList data, Map<String, dynamic> json) {
	if (json['promoType'] != null) {
		data.promoType = json['promoType'].toString();
	}
	if (json['promoName'] != null) {
		data.promoName = json['promoName'].toString();
	}
	if (json['promoId'] != null) {
		data.promoId = json['promoId'].toString();
	}
	if (json['promoTypeName'] != null) {
		data.promoTypeName = json['promoTypeName'].toString();
	}
	return data;
}

Map<String, dynamic> goodsInfoPromoListToJson(GoodsInfoPromoList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['promoType'] = entity.promoType;
	data['promoName'] = entity.promoName;
	data['promoId'] = entity.promoId;
	data['promoTypeName'] = entity.promoTypeName;
	return data;
}

goodsInfoCommentListFromJson(GoodsInfoCommentList data, Map<String, dynamic> json) {
	if (json['cid'] != null) {
		data.cid = json['cid'] is String
				? int.tryParse(json['cid'])
				: json['cid'].toInt();
	}
	if (json['colorName'] != null) {
		data.colorName = json['colorName'].toString();
	}
	if (json['comments'] != null) {
		data.comments = json['comments'].toString();
	}
	if (json['satisfaction'] != null) {
		data.satisfaction = json['satisfaction'] is String
				? int.tryParse(json['satisfaction'])
				: json['satisfaction'].toInt();
	}
	if (json['displayType'] != null) {
		data.displayType = json['displayType'] is String
				? int.tryParse(json['displayType'])
				: json['displayType'].toInt();
	}
	if (json['isBest'] != null) {
		data.isBest = json['isBest'] is String
				? int.tryParse(json['isBest'])
				: json['isBest'].toInt();
	}
	if (json['addTime'] != null) {
		data.addTime = json['addTime'].toString();
	}
	if (json['userName'] != null) {
		data.userName = json['userName'].toString();
	}
	if (json['avatarUrl'] != null) {
		data.avatarUrl = json['avatarUrl'].toString();
	}
	if (json['picNum'] != null) {
		data.picNum = json['picNum'] is String
				? int.tryParse(json['picNum'])
				: json['picNum'].toInt();
	}
	return data;
}

Map<String, dynamic> goodsInfoCommentListToJson(GoodsInfoCommentList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['cid'] = entity.cid;
	data['colorName'] = entity.colorName;
	data['comments'] = entity.comments;
	data['satisfaction'] = entity.satisfaction;
	data['displayType'] = entity.displayType;
	data['isBest'] = entity.isBest;
	data['addTime'] = entity.addTime;
	data['userName'] = entity.userName;
	data['avatarUrl'] = entity.avatarUrl;
	data['picNum'] = entity.picNum;
	return data;
}

goodsInfoProductCardInfoFromJson(GoodsInfoProductCardInfo data, Map<String, dynamic> json) {
	if (json['cardList'] != null) {
		data.cardList = (json['cardList'] as List).map((v) => GoodsInfoProductCardInfoCardList().fromJson(v)).toList();
	}
	if (json['discountMax'] != null) {
		data.discountMax = json['discountMax'].toString();
	}
	if (json['unGet'] != null) {
		data.unGet = json['unGet'] is String
				? int.tryParse(json['unGet'])
				: json['unGet'].toInt();
	}
	return data;
}

Map<String, dynamic> goodsInfoProductCardInfoToJson(GoodsInfoProductCardInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['cardList'] =  entity.cardList?.map((v) => v.toJson())?.toList();
	data['discountMax'] = entity.discountMax;
	data['unGet'] = entity.unGet;
	return data;
}

goodsInfoProductCardInfoCardListFromJson(GoodsInfoProductCardInfoCardList data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['ln'] != null) {
		data.ln = json['ln'].toString();
	}
	if (json['channelCode'] != null) {
		data.channelCode = json['channelCode'].toString();
	}
	if (json['cardLnName'] != null) {
		data.cardLnName = json['cardLnName'].toString();
	}
	if (json['cardMoney'] != null) {
		data.cardMoney = json['cardMoney'] is String
				? double.tryParse(json['cardMoney'])
				: json['cardMoney'].toDouble();
	}
	if (json['cardLimitMoney'] != null) {
		data.cardLimitMoney = json['cardLimitMoney'] is String
				? double.tryParse(json['cardLimitMoney'])
				: json['cardLimitMoney'].toDouble();
	}
	if (json['rangeCode'] != null) {
		data.rangeCode = json['rangeCode'] is String
				? int.tryParse(json['rangeCode'])
				: json['rangeCode'].toInt();
	}
	if (json['rangeValue'] != null) {
		data.rangeValue = json['rangeValue'].toString();
	}
	if (json['activeTime'] != null) {
		data.activeTime = json['activeTime'].toString();
	}
	if (json['expireTime'] != null) {
		data.expireTime = json['expireTime'].toString();
	}
	if (json['status'] != null) {
		data.status = json['status'].toString();
	}
	if (json['cardType'] != null) {
		data.cardType = json['cardType'].toString();
	}
	return data;
}

Map<String, dynamic> goodsInfoProductCardInfoCardListToJson(GoodsInfoProductCardInfoCardList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['ln'] = entity.ln;
	data['channelCode'] = entity.channelCode;
	data['cardLnName'] = entity.cardLnName;
	data['cardMoney'] = entity.cardMoney;
	data['cardLimitMoney'] = entity.cardLimitMoney;
	data['rangeCode'] = entity.rangeCode;
	data['rangeValue'] = entity.rangeValue;
	data['activeTime'] = entity.activeTime;
	data['expireTime'] = entity.expireTime;
	data['status'] = entity.status;
	data['cardType'] = entity.cardType;
	return data;
}