import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class GoodsInfoEntity with JsonConvert<GoodsInfoEntity> {
	String channelCode;
	String productSysCode;
	String productName;
	int brandId;
	String brandCode;
	String brandName;
	String brandUrl;
	String brandRemark;
	int categoryId;
	String sellPoint;
	String sellerCode;
	int salesMode;
	List<GoodsInfoGalleryList> galleryList;
	double marketPrice;
	String productUrl;
	double protectPrice;
	GoodsInfoSaleAttrList saleAttrList;
	double salePrice;
	int status;
	int stockNum;
	bool isChange;
	int abandonPackages;
	int abandonDiscounts;
	List<GoodsInfoSkuInfo> skuInfo;
	String isPromotion;
	int isPostFree;
	double commission;
	List<GoodsInfoPromoList> promoList;
	List<GoodsInfoCommentList> commentList;
	int commentCount;
	GoodsInfoProductCardInfo productCardInfo;
	int currentTime;
	double commissionRatio;
	String tagName;
	String tagPosition;
	String points;
	int collectStatus;
	int saleCountWeek;
	int saleCountMonth;
	int saleCountThreemonth;
	int abandonCoupons;
	int abandonIntegral;
	String categoryCrumb;
	String categoryIdCrumb;
	int limitMaxNumber;
	int limitMinNumber;
	double integralDeductMoney;
	List<double> memberPriceArr;
	int levelId;
}

class GoodsInfoGalleryList with JsonConvert<GoodsInfoGalleryList> {
	String sellerCode;
	String productSysCode;
	String imageUrl;
	String imageName;
	int imageType;
	String colorCode;
}

class GoodsInfoSaleAttrList with JsonConvert<GoodsInfoSaleAttrList> {
	List<GoodsInfoSaleAttrListSaleAttr1List> saleAttr1List;
	List<GoodsInfoSaleAttrListSaleAttr2List> saleAttr2List;
}

class GoodsInfoSaleAttrListSaleAttr1List with JsonConvert<GoodsInfoSaleAttrListSaleAttr1List> {
	String imageUrl;
	String saleAttr1Key;
	String saleAttr1Value;
	String saleAttr1ValueCode;
	int stockNum;
	String barcodeSysCode;
}

class GoodsInfoSaleAttrListSaleAttr2List with JsonConvert<GoodsInfoSaleAttrListSaleAttr2List> {
	String saleAttr2Key;
	String saleAttr2ValueCode;
	String saleAttr2Value;
	int stockNum;
	String barcodeSysCode;
}

class GoodsInfoSkuInfo with JsonConvert<GoodsInfoSkuInfo> {
	String saleAttr2ValueCode;
	int stockNum;
	String barcodeSysCode;
	String saleAttr1ValueCode;
}

class GoodsInfoPromoList with JsonConvert<GoodsInfoPromoList> {
	String promoType;
	String promoName;
	String promoId;
	String promoTypeName;
}

class GoodsInfoCommentList with JsonConvert<GoodsInfoCommentList> {
	int cid;
	String colorName;
	String comments;
	int satisfaction;
	int displayType;
	int isBest;
	String addTime;
	String userName;
	String avatarUrl;
	int picNum;
}

class GoodsInfoProductCardInfo with JsonConvert<GoodsInfoProductCardInfo> {
	List<GoodsInfoProductCardInfoCardList> cardList;
	String discountMax;
	int unGet;
}

class GoodsInfoProductCardInfoCardList with JsonConvert<GoodsInfoProductCardInfoCardList> {
	int id;
	String ln;
	String channelCode;
	String cardLnName;
	double cardMoney;
	double cardLimitMoney;
	int rangeCode;
	String rangeValue;
	String activeTime;
	String expireTime;
	String status;
	String cardType;
}
