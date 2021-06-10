import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/generated/json/base/json_field.dart';

class BaseGoodsList with JsonConvert<BaseGoodsList> {
  @JSONField(name: "list")
  List<BaseGoodsEntity> xList;
  int total;
}

class BaseGoodsEntity with JsonConvert<BaseGoodsEntity> {
  String storeId;
  String productCode;

  int tagType;
  String icon;
  String tagName;
  String tagPosition;

  String stock;
  String imgUrl;
  String salePoint;
  String brandName;
  String productName;
  String salesPrice;
  String marketPrice;
  List<PromoInfoEntity> promoInfoList;
}

class PromoInfoEntity with JsonConvert<PromoInfoEntity> {
  int promotionId;
  String promotionName;
  String promotionType;
  String type;
}
