import 'package:flutterapp/entity/base_goods_entity.dart';

baseGoodsListFromJson(BaseGoodsList data, Map<String, dynamic> json) {
	if (json['list'] != null) {
		data.xList = (json['list'] as List).map((v) => BaseGoodsEntity().fromJson(v)).toList();
	}
	if (json['total'] != null) {
		data.total = json['total'] is String
				? int.tryParse(json['total'])
				: json['total'].toInt();
	}
	return data;
}

Map<String, dynamic> baseGoodsListToJson(BaseGoodsList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['list'] =  entity.xList?.map((v) => v.toJson())?.toList();
	data['total'] = entity.total;
	return data;
}

baseGoodsEntityFromJson(BaseGoodsEntity data, Map<String, dynamic> json) {
	if (json['storeId'] != null) {
		data.storeId = json['storeId'].toString();
	}
	if (json['productCode'] != null) {
		data.productCode = json['productCode'].toString();
	}
	if (json['tagType'] != null) {
		data.tagType = json['tagType'] is String
				? int.tryParse(json['tagType'])
				: json['tagType'].toInt();
	}
	if (json['icon'] != null) {
		data.icon = json['icon'].toString();
	}
	if (json['tagName'] != null) {
		data.tagName = json['tagName'].toString();
	}
	if (json['tagPosition'] != null) {
		data.tagPosition = json['tagPosition'].toString();
	}
	if (json['stock'] != null) {
		data.stock = json['stock'].toString();
	}
	if (json['imgUrl'] != null) {
		data.imgUrl = json['imgUrl'].toString();
	}
	if (json['salePoint'] != null) {
		data.salePoint = json['salePoint'].toString();
	}
	if (json['brandName'] != null) {
		data.brandName = json['brandName'].toString();
	}
	if (json['productName'] != null) {
		data.productName = json['productName'].toString();
	}
	if (json['salesPrice'] != null) {
		data.salesPrice = json['salesPrice'].toString();
	}
	if (json['marketPrice'] != null) {
		data.marketPrice = json['marketPrice'].toString();
	}
	if (json['promoInfoList'] != null) {
		data.promoInfoList = (json['promoInfoList'] as List).map((v) => PromoInfoEntity().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> baseGoodsEntityToJson(BaseGoodsEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['storeId'] = entity.storeId;
	data['productCode'] = entity.productCode;
	data['tagType'] = entity.tagType;
	data['icon'] = entity.icon;
	data['tagName'] = entity.tagName;
	data['tagPosition'] = entity.tagPosition;
	data['stock'] = entity.stock;
	data['imgUrl'] = entity.imgUrl;
	data['salePoint'] = entity.salePoint;
	data['brandName'] = entity.brandName;
	data['productName'] = entity.productName;
	data['salesPrice'] = entity.salesPrice;
	data['marketPrice'] = entity.marketPrice;
	data['promoInfoList'] =  entity.promoInfoList?.map((v) => v.toJson())?.toList();
	return data;
}

promoInfoEntityFromJson(PromoInfoEntity data, Map<String, dynamic> json) {
	if (json['promotionId'] != null) {
		data.promotionId = json['promotionId'] is String
				? int.tryParse(json['promotionId'])
				: json['promotionId'].toInt();
	}
	if (json['promotionName'] != null) {
		data.promotionName = json['promotionName'].toString();
	}
	if (json['promotionType'] != null) {
		data.promotionType = json['promotionType'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'].toString();
	}
	return data;
}

Map<String, dynamic> promoInfoEntityToJson(PromoInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['promotionId'] = entity.promotionId;
	data['promotionName'] = entity.promotionName;
	data['promotionType'] = entity.promotionType;
	data['type'] = entity.type;
	return data;
}