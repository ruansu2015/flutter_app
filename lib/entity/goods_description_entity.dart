import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/generated/json/base/json_field.dart';

class GoodsDescriptionEntity with JsonConvert<GoodsDescriptionEntity> {
  String productSysCode;
  String productName;
  double marketPrice;
  String salePoint;
  String modelCard;
  String productUrl;
  int brandId;
  String brandName;
  String brandUrl;
  String brandInfo;
  List<GoodsDescriptionCategories> categories;
  GoodsDescriptionImages images;
  String sizeTable;
  String sizePicture;
}

class GoodsDescriptionCategories with JsonConvert<GoodsDescriptionCategories> {
  int categoryId;
  String categoryName;
}

class GoodsDescriptionImages with JsonConvert<GoodsDescriptionImages> {
  @JSONField(name: "2")
  List<GoodsDescriptionImages2> x2;
  @JSONField(name: "3")
  List<GoodsDescriptionImages3> x3;
  @JSONField(name: "4")
  List<GoodsDescriptionImages4> x4;
}

class GoodsDescriptionImages2 with JsonConvert<GoodsDescriptionImages2> {
  String imageUrl;
  int imageWidth;
  int imageHeight;
}

class GoodsDescriptionImages3 with JsonConvert<GoodsDescriptionImages3> {
  String imageUrl;
  String imageDesc;
  String colorCode;
  String colorName;
  int imageWidth;
  int imageHeight;
}

class GoodsDescriptionImages4 with JsonConvert<GoodsDescriptionImages4> {
  String imageUrl;
  String imageDesc;
  int imageWidth;
  int imageHeight;
}

class GoodsDescriptionGoodsAttrs with JsonConvert<GoodsDescriptionGoodsAttrs> {
  @JSONField(name: "3")
  GoodsDescriptionGoodsAttrs3 x3;
  @JSONField(name: "6")
  GoodsDescriptionGoodsAttrs6 x6;
  @JSONField(name: "7")
  GoodsDescriptionGoodsAttrs7 x7;
  @JSONField(name: "85")
  GoodsDescriptionGoodsAttrs85 x85;
  @JSONField(name: "97")
  GoodsDescriptionGoodsAttrs97 x97;
  @JSONField(name: "86")
  GoodsDescriptionGoodsAttrs86 x86;
  @JSONField(name: "10")
  GoodsDescriptionGoodsAttrs10 x10;
}

class GoodsDescriptionGoodsAttrs3
    with JsonConvert<GoodsDescriptionGoodsAttrs3> {
  String attrName;
  List<String> attrValue;
}

class GoodsDescriptionGoodsAttrs6
    with JsonConvert<GoodsDescriptionGoodsAttrs6> {
  String attrName;
  List<String> attrValue;
}

class GoodsDescriptionGoodsAttrs7
    with JsonConvert<GoodsDescriptionGoodsAttrs7> {
  String attrName;
  List<String> attrValue;
}

class GoodsDescriptionGoodsAttrs85
    with JsonConvert<GoodsDescriptionGoodsAttrs85> {
  String attrName;
  List<String> attrValue;
}

class GoodsDescriptionGoodsAttrs97
    with JsonConvert<GoodsDescriptionGoodsAttrs97> {
  String attrName;
  List<String> attrValue;
}

class GoodsDescriptionGoodsAttrs86
    with JsonConvert<GoodsDescriptionGoodsAttrs86> {
  String attrName;
  List<String> attrValue;
}

class GoodsDescriptionGoodsAttrs10
    with JsonConvert<GoodsDescriptionGoodsAttrs10> {
  String attrName;
  List<String> attrValue;
}
