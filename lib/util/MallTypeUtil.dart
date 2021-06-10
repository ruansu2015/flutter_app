class MallTypeUtil {
  static const int ITEM_TYPE_BANNER = 0; //轮播
  static const int ITEM_TYPE_TEMPLATE_ICON = 1; //顶部按钮
  static const int ITEM_TYPE_TEMPLATE_BRAND = 2; //甄选品牌
  static const int ITEM_TYPE_TEMPLATE_SELL_HOT = 3; //热销榜单
  static const int ITEM_TYPE_TEMPLATE_ACTIVITY_AREA = 4; //活动专区
  static const int ITEM_TYPE_TEMPLATE_SINGLE = 5; //单个图片
  static const int ITEM_TYPE_TEMPLATE_ACTIVITY_AREA_SINGLE = 6; //活动无滚轴
  static const int ITEM_TYPE_TEMPLATE_HOT_SALE_AREA = 7; //底部特卖
  static const int ITEM_TYPE_TEMPLATE_SINGLE_VIDEO = 8; //单视频
  static const int ITEM_TYPE_SEC_KILL = 9; //秒杀
  static const int ITEM_TYPE_TEMPLATE_SPECIAL_ACTIVITY = 10; //带顶图的横向list
  static const int ITEM_TYPE_TEMPLATE_HOT_SALE_AREA_GOODS = 11; //轮播
  static const int ITEM_TYPE_TEMPLATE_BRAND_SIX = 12; //品牌馆
  static const int ITEM_TYPE_TEMPLATE_BRAND_SEVEN = 13; //品牌7
  static const int ITEM_TYPE_TEMPLATE_HOT_ZONE = 14; //热区
  static const int NONE = -1;

  static int getViewType(int plateType, String plateName) {
    switch (plateType) {
      case 1:
        switch (plateName) {
          case 'referrer_menu': //顶部按钮
            return ITEM_TYPE_TEMPLATE_ICON;
          case 'referrer_brand': //甄选品牌
            return ITEM_TYPE_TEMPLATE_BRAND;
          case 'image_row_2_column_3': //品牌
            return ITEM_TYPE_TEMPLATE_BRAND_SIX;
          case 'ranking_list': //热销榜单
            return ITEM_TYPE_TEMPLATE_SELL_HOT;
          case 'single_image': //单个图片
            return ITEM_TYPE_TEMPLATE_SINGLE;
          case 'image_lf_1_rt_6':
            return ITEM_TYPE_TEMPLATE_BRAND_SEVEN;
        }
        break;
      case 2:
        return ITEM_TYPE_SEC_KILL;
      case 3:
        switch (plateName) {
          case 'special_activity':
            return ITEM_TYPE_TEMPLATE_SPECIAL_ACTIVITY;
          case 'activity_area':
            return ITEM_TYPE_TEMPLATE_ACTIVITY_AREA_SINGLE;
        }
        break;
      case 4:
        return ITEM_TYPE_TEMPLATE_HOT_ZONE;
      case 6:
        return ITEM_TYPE_BANNER;
      case 7:
        switch (plateName) {
          case 'activity_area':
            return ITEM_TYPE_TEMPLATE_ACTIVITY_AREA;
          case 'hot_sales_area':
            return ITEM_TYPE_TEMPLATE_HOT_SALE_AREA;
        }
        break;
      case 8:
        if (plateName == 'single_video') return ITEM_TYPE_TEMPLATE_SINGLE_VIDEO;
        break;
    }
  }
}
