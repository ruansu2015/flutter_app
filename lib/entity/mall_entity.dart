import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class MallEntity with JsonConvert<MallEntity> {
  MallNewWebsite newWebsite;
  List<MallMallPlateContentBeanList> mallPlateContentBeanList;
}

class MallNewWebsite with JsonConvert<MallNewWebsite> {
  int siteId;
  int channelType;
  String siteMark;
  String siteName;
  String siteUrl;
  String iconUrl;
  int isShow;
  int siteSort;
  int status;
  String createUser;
  String createDate;
  String lastUpdateUser;
  String lastUpdateDate;
  String channelCode;
  int sid;
}

class MallMallPlateContentBeanList
    with JsonConvert<MallMallPlateContentBeanList> {
  MallMallPlateContentBeanListMallPlate mallPlate;
  MallMallPlateContentBeanListMallPlateTemplate mallPlateTemplate;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;
}

class MallMallPlateContentBeanListMallPlate
    with JsonConvert<MallMallPlateContentBeanListMallPlate> {
  int plateId;
  int siteId;
  int templateId;
  String plateCode;
  String plateName;
  String plateTitle;
  String tagName;
  String hotspotName;
  int groupId;
  int parentPlateId;
  String styleName;
  String backColor;
  int channelType;
  int interimType;
  int plateType;
  int sort;
  int status;
  String createUser;
  String createDate;
  String lastUpdateUser;
  String lastUpdateDate;
}

class MallMallPlateContentBeanListMallPlateTemplate
    with JsonConvert<MallMallPlateContentBeanListMallPlateTemplate> {
  int templateId;
  String templateCode;
  String templateName;
  String imageUrl;
  String tone;
  int width;
  String plateContentNum;
  int titleArea;
  int titleHeight;
  String titleColor;
  int height;
  String strokeSize;
  int footDistance;
  int headlineState;
  String coordinate;
  int plateType;
  int sort;
  int status;
  String createUser;
  String createDate;
  String lastUpdateUser;
  String lastUpdateDate;
}

class MallMallPlateContentBeanListMallPlateContentList
    with JsonConvert<MallMallPlateContentBeanListMallPlateContentList> {
  int contentId;
  int plateType;
  String contentName;
  String exName;
  String styleName;
  String imageUrl;
  String imagePx;
  String recomKey;
  String recomCategory;
  String recomBrand;
  String recomBrandCode;
  String urlWebsite;
  String ipadUrl;
  int isNeedLazyload;
  String startDate;
  String endDate;
  int sort;
  int status;
  String createUser;
  String createDate;
  String lastUpdateUser;
  String lastUpdateDate;
  String recomGoods;
}
