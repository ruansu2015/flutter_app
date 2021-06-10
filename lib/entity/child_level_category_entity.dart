import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class ChildLevelCategoryEntity with JsonConvert<ChildLevelCategoryEntity> {
	ChildLevelCategoryMallExtendCategory mallExtendCategory;
	List<ChildLevelCategoryChildren> children;
}

class ChildLevelCategoryMallExtendCategory with JsonConvert<ChildLevelCategoryMallExtendCategory> {
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

class ChildLevelCategoryChildren with JsonConvert<ChildLevelCategoryChildren> {
	ChildLevelCategoryChildrenMallExtendCategory mallExtendCategory;
	List<ChildLevelCategoryChildrenMallExtendCategory> children;
}

class ChildLevelCategoryChildrenMallExtendCategory with JsonConvert<ChildLevelCategoryChildrenMallExtendCategory> {
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
