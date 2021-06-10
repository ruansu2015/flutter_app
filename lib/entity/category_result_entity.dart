import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class CategoryResultEntity with JsonConvert<CategoryResultEntity> {
	CategoryResultMallExtendCategory mallExtendCategory;
	List<CategoryResultChildren> children;
}

class CategoryResultMallExtendCategory with JsonConvert<CategoryResultMallExtendCategory> {
	int id;
	int parentId;
	String siteCateName;
	int categoryMarkRed;
	String productCategoryId;
	String siteSex;
	String brandId;
	String brandCode;
	String siteUrl;
	String crumb;
	int status;
	String createTime;
	String updateTime;
	int sort;
	String icon;
	String imgPx;
	String wordAdMark;
	String imgAdMark;
	String bdAdMark;
	int urlType;
	String urlTypeId;
	String channelCode;
	String relBrandCode;
	int channelType;
	int sid;
}

class CategoryResultChildren with JsonConvert<CategoryResultChildren> {
	CategoryResultChildrenMallExtendCategory mallExtendCategory;
	List<CategoryResultChildrenChildren> children;
}

class CategoryResultChildrenMallExtendCategory with JsonConvert<CategoryResultChildrenMallExtendCategory> {
	int id;
	int parentId;
	String siteCateName;
	int categoryMarkRed;
	String productCategoryId;
	String siteSex;
	String brandId;
	String brandCode;
	String siteUrl;
	String crumb;
	int status;
	String createTime;
	String updateTime;
	int sort;
	String icon;
	String imgPx;
	String wordAdMark;
	String imgAdMark;
	String bdAdMark;
	int urlType;
	String urlTypeId;
	String channelCode;
	String relBrandCode;
	int channelType;
	int sid;
}

class CategoryResultChildrenChildren with JsonConvert<CategoryResultChildrenChildren> {
	CategoryResultChildrenChildrenMallExtendCategory mallExtendCategory;
}

class CategoryResultChildrenChildrenMallExtendCategory with JsonConvert<CategoryResultChildrenChildrenMallExtendCategory> {
	int id;
	int parentId;
	String siteCateName;
	int categoryMarkRed;
	String productCategoryId;
	String siteSex;
	String brandId;
	String brandCode;
	String siteUrl;
	String crumb;
	int status;
	String createTime;
	String updateTime;
	int sort;
	String icon;
	String imgPx;
	String wordAdMark;
	String imgAdMark;
	String bdAdMark;
	int urlType;
	String urlTypeId;
	String channelCode;
	String relBrandCode;
	int channelType;
	int sid;
}
