import 'package:flustars/flustars.dart';
import 'package:flutterapp/entity/goods_description_entity.dart';

goodsDescriptionEntityFromJson(
    GoodsDescriptionEntity data, Map<String, dynamic> json) {
  if (json['productSysCode'] != null) {
    data.productSysCode = json['productSysCode'].toString();
  }
  if (json['productName'] != null) {
    data.productName = json['productName'].toString();
  }
  if (json['marketPrice'] != null) {
    data.marketPrice = json['marketPrice'] is String
        ? double.tryParse(json['marketPrice'])
        : json['marketPrice'].toDouble();
  }
  if (json['salePoint'] != null) {
    data.salePoint = json['salePoint'].toString();
  }
  if (json['modelCard'] != null) {
    data.modelCard = json['modelCard'].toString();
  }
  if (json['productUrl'] != null) {
    data.productUrl = json['productUrl'].toString();
  }
  if (json['brandId'] != null) {
    data.brandId = json['brandId'] is String
        ? int.tryParse(json['brandId'])
        : json['brandId'].toInt();
  }
  if (json['brandName'] != null) {
    data.brandName = json['brandName'].toString();
  }
  if (json['brandUrl'] != null) {
    data.brandUrl = json['brandUrl'].toString();
  }
  if (json['brandInfo'] != null) {
    data.brandInfo = json['brandInfo'].toString();
  }
  if (json['categories'] != null) {
    data.categories = (json['categories'] as List)
        .map((v) => GoodsDescriptionCategories().fromJson(v))
        .toList();
  }
  if (json['images'] != null) {
    data.images = GoodsDescriptionImages().fromJson(json['images']);
  }
  if (json['sizeTable'] != null) {
    data.sizeTable = json['sizeTable'].toString();
  }
  if (json['sizePicture'] != null) {
    data.sizePicture = json['sizePicture'].toString();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionEntityToJson(
    GoodsDescriptionEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['productSysCode'] = entity.productSysCode;
  data['productName'] = entity.productName;
  data['marketPrice'] = entity.marketPrice;
  data['salePoint'] = entity.salePoint;
  data['modelCard'] = entity.modelCard;
  data['productUrl'] = entity.productUrl;
  data['brandId'] = entity.brandId;
  data['brandName'] = entity.brandName;
  data['brandUrl'] = entity.brandUrl;
  data['brandInfo'] = entity.brandInfo;
  data['categories'] = entity.categories?.map((v) => v.toJson())?.toList();
  data['images'] = entity.images?.toJson();
  data['sizeTable'] = entity.sizeTable;
  data['sizePicture'] = entity.sizePicture;
  return data;
}

goodsDescriptionCategoriesFromJson(
    GoodsDescriptionCategories data, Map<String, dynamic> json) {
  if (json['categoryId'] != null) {
    data.categoryId = json['categoryId'] is String
        ? int.tryParse(json['categoryId'])
        : json['categoryId'].toInt();
  }
  if (json['categoryName'] != null) {
    data.categoryName = json['categoryName'].toString();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionCategoriesToJson(
    GoodsDescriptionCategories entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['categoryId'] = entity.categoryId;
  data['categoryName'] = entity.categoryName;
  return data;
}

goodsDescriptionImagesFromJson(
    GoodsDescriptionImages data, Map<String, dynamic> json) {
  if (json['2'] != null) {
    data.x2 = (json['2'] as List)
        .map((v) => GoodsDescriptionImages2().fromJson(v))
        .toList();
  }
  if (json['3'] != null) {
    data.x3 = (json['3'] as List)
        .map((v) => GoodsDescriptionImages3().fromJson(v))
        .toList();
  }
  if (json['4'] != null) {
    data.x4 = (json['4'] as List)
        .map((v) => GoodsDescriptionImages4().fromJson(v))
        .toList();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionImagesToJson(
    GoodsDescriptionImages entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['2'] = entity.x2?.map((v) => v.toJson())?.toList();
  data['3'] = entity.x3?.map((v) => v.toJson())?.toList();
  data['4'] = entity.x4?.map((v) => v.toJson())?.toList();
  return data;
}

goodsDescriptionImages2FromJson(
    GoodsDescriptionImages2 data, Map<String, dynamic> json) {
  if (json['imageUrl'] != null) {
    data.imageUrl = json['imageUrl'].toString();
  }
  if (json['imageWidth'] != null) {
    data.imageWidth = json['imageWidth'] is String
        ? int.tryParse(json['imageWidth'])
        : json['imageWidth'].toInt();
  }
  if (json['imageHeight'] != null) {
    data.imageHeight = json['imageHeight'] is String
        ? int.tryParse(json['imageHeight'])
        : json['imageHeight'].toInt();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionImages2ToJson(
    GoodsDescriptionImages2 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['imageUrl'] = entity.imageUrl;
  data['imageWidth'] = entity.imageWidth;
  data['imageHeight'] = entity.imageHeight;
  return data;
}

goodsDescriptionImages3FromJson(
    GoodsDescriptionImages3 data, Map<String, dynamic> json) {
  if (json['imageUrl'] != null) {
    data.imageUrl = json['imageUrl'].toString();
  }
  if (json['imageDesc'] != null) {
    data.imageDesc = json['imageDesc'].toString();
  }
  if (json['colorCode'] != null) {
    data.colorCode = json['colorCode'].toString();
  }
  if (json['colorName'] != null) {
    data.colorName = json['colorName'].toString();
  }
  if (json['imageWidth'] != null) {
    data.imageWidth = json['imageWidth'] is String
        ? int.tryParse(json['imageWidth'])
        : json['imageWidth'].toInt();
  }
  if (json['imageHeight'] != null) {
    data.imageHeight = json['imageHeight'] is String
        ? int.tryParse(json['imageHeight'])
        : json['imageHeight'].toInt();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionImages3ToJson(
    GoodsDescriptionImages3 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['imageUrl'] = entity.imageUrl;
  data['imageDesc'] = entity.imageDesc;
  data['colorCode'] = entity.colorCode;
  data['colorName'] = entity.colorName;
  data['imageWidth'] = entity.imageWidth;
  data['imageHeight'] = entity.imageHeight;
  return data;
}

goodsDescriptionImages4FromJson(
    GoodsDescriptionImages4 data, Map<String, dynamic> json) {
  if (json['imageUrl'] != null) {
    data.imageUrl = json['imageUrl'].toString();
  }
  if (json['imageDesc'] != null) {
    data.imageDesc = json['imageDesc'].toString();
  }
  if (json['imageWidth'] != null) {
    data.imageWidth = json['imageWidth'] is String
        ? int.tryParse(json['imageWidth'])
        : json['imageWidth'].toInt();
  }
  if (json['imageHeight'] != null) {
    data.imageHeight = json['imageHeight'] is String
        ? int.tryParse(json['imageHeight'])
        : json['imageHeight'].toInt();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionImages4ToJson(
    GoodsDescriptionImages4 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['imageUrl'] = entity.imageUrl;
  data['imageDesc'] = entity.imageDesc;
  data['imageWidth'] = entity.imageWidth;
  data['imageHeight'] = entity.imageHeight;
  return data;
}

goodsDescriptionGoodsAttrsFromJson(
    GoodsDescriptionGoodsAttrs data, Map<String, dynamic> json) {
  if (json['3'] != null) {
    data.x3 = GoodsDescriptionGoodsAttrs3().fromJson(json['3']);
  }
  if (json['6'] != null) {
    data.x6 = GoodsDescriptionGoodsAttrs6().fromJson(json['6']);
  }
  if (json['7'] != null) {
    data.x7 = GoodsDescriptionGoodsAttrs7().fromJson(json['7']);
  }
  if (json['85'] != null) {
    data.x85 = GoodsDescriptionGoodsAttrs85().fromJson(json['85']);
  }
  if (json['97'] != null) {
    data.x97 = GoodsDescriptionGoodsAttrs97().fromJson(json['97']);
  }
  if (json['86'] != null) {
    data.x86 = GoodsDescriptionGoodsAttrs86().fromJson(json['86']);
  }
  if (json['10'] != null) {
    data.x10 = GoodsDescriptionGoodsAttrs10().fromJson(json['10']);
  }
  return data;
}

Map<String, dynamic> goodsDescriptionGoodsAttrsToJson(
    GoodsDescriptionGoodsAttrs entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['3'] = entity.x3?.toJson();
  data['6'] = entity.x6?.toJson();
  data['7'] = entity.x7?.toJson();
  data['85'] = entity.x85?.toJson();
  data['97'] = entity.x97?.toJson();
  data['86'] = entity.x86?.toJson();
  data['10'] = entity.x10?.toJson();
  return data;
}

goodsDescriptionGoodsAttrs3FromJson(
    GoodsDescriptionGoodsAttrs3 data, Map<String, dynamic> json) {
  if (json['attrName'] != null) {
    data.attrName = json['attrName'].toString();
  }
  if (json['attrValue'] != null) {
    data.attrValue = (json['attrValue'] as List)
        .map((v) => v.toString())
        .toList()
        .cast<String>();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionGoodsAttrs3ToJson(
    GoodsDescriptionGoodsAttrs3 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['attrName'] = entity.attrName;
  data['attrValue'] = entity.attrValue;
  return data;
}

goodsDescriptionGoodsAttrs6FromJson(
    GoodsDescriptionGoodsAttrs6 data, Map<String, dynamic> json) {
  if (json['attrName'] != null) {
    data.attrName = json['attrName'].toString();
  }
  if (json['attrValue'] != null) {
    data.attrValue = (json['attrValue'] as List)
        .map((v) => v.toString())
        .toList()
        .cast<String>();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionGoodsAttrs6ToJson(
    GoodsDescriptionGoodsAttrs6 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['attrName'] = entity.attrName;
  data['attrValue'] = entity.attrValue;
  return data;
}

goodsDescriptionGoodsAttrs7FromJson(
    GoodsDescriptionGoodsAttrs7 data, Map<String, dynamic> json) {
  if (json['attrName'] != null) {
    data.attrName = json['attrName'].toString();
  }
  if (json['attrValue'] != null) {
    data.attrValue = (json['attrValue'] as List)
        .map((v) => v.toString())
        .toList()
        .cast<String>();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionGoodsAttrs7ToJson(
    GoodsDescriptionGoodsAttrs7 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['attrName'] = entity.attrName;
  data['attrValue'] = entity.attrValue;
  return data;
}

goodsDescriptionGoodsAttrs85FromJson(
    GoodsDescriptionGoodsAttrs85 data, Map<String, dynamic> json) {
  if (json['attrName'] != null) {
    data.attrName = json['attrName'].toString();
  }
  if (json['attrValue'] != null) {
    data.attrValue = (json['attrValue'] as List)
        .map((v) => v.toString())
        .toList()
        .cast<String>();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionGoodsAttrs85ToJson(
    GoodsDescriptionGoodsAttrs85 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['attrName'] = entity.attrName;
  data['attrValue'] = entity.attrValue;
  return data;
}

goodsDescriptionGoodsAttrs97FromJson(
    GoodsDescriptionGoodsAttrs97 data, Map<String, dynamic> json) {
  if (json['attrName'] != null) {
    data.attrName = json['attrName'].toString();
  }
  if (json['attrValue'] != null) {
    data.attrValue = (json['attrValue'] as List)
        .map((v) => v.toString())
        .toList()
        .cast<String>();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionGoodsAttrs97ToJson(
    GoodsDescriptionGoodsAttrs97 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['attrName'] = entity.attrName;
  data['attrValue'] = entity.attrValue;
  return data;
}

goodsDescriptionGoodsAttrs86FromJson(
    GoodsDescriptionGoodsAttrs86 data, Map<String, dynamic> json) {
  if (json['attrName'] != null) {
    data.attrName = json['attrName'].toString();
  }
  if (json['attrValue'] != null) {
    data.attrValue = (json['attrValue'] as List)
        .map((v) => v.toString())
        .toList()
        .cast<String>();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionGoodsAttrs86ToJson(
    GoodsDescriptionGoodsAttrs86 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['attrName'] = entity.attrName;
  data['attrValue'] = entity.attrValue;
  return data;
}

goodsDescriptionGoodsAttrs10FromJson(
    GoodsDescriptionGoodsAttrs10 data, Map<String, dynamic> json) {
  if (json['attrName'] != null) {
    data.attrName = json['attrName'].toString();
  }
  if (json['attrValue'] != null) {
    data.attrValue = (json['attrValue'] as List)
        .map((v) => v.toString())
        .toList()
        .cast<String>();
  }
  return data;
}

Map<String, dynamic> goodsDescriptionGoodsAttrs10ToJson(
    GoodsDescriptionGoodsAttrs10 entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['attrName'] = entity.attrName;
  data['attrValue'] = entity.attrValue;
  return data;
}
