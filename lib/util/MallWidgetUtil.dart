import 'package:flutter/cupertino.dart';
import 'package:flutterapp/entity/mall_entity.dart';
import 'package:flutterapp/util/MallTypeUtil.dart';
import 'package:flutterapp/widget/BrandWidget.dart';
import 'package:flutterapp/widget/GridWidget.dart';
import 'package:flutterapp/widget/HorizontalNoTabGoodsWidget.dart';
import 'package:flutterapp/widget/HorizontalTabGoodsWidget.dart';
import 'package:flutterapp/widget/HorizontalTabView.dart';
import 'package:flutterapp/widget/HotSaleWidget.dart';
import 'package:flutterapp/widget/PageBannerWidget.dart';
import 'package:flutterapp/widget/SevenBrandWidget.dart';
import 'package:flutterapp/widget/SingleImageWidget.dart';
import 'package:flutterapp/widget/SixBrandWidget.dart';
import 'package:flutterapp/widget/SpecialActivityWidget.dart';

class MallWidgetUtil {
  static Widget getWidget(
      String title,
      int plateType,
      int footDistance,
      List<MallMallPlateContentBeanListMallPlateContentList>
          mallPlateContentList) {
    switch (plateType) {
      case MallTypeUtil.ITEM_TYPE_BANNER:
        return PageBannerWidget(footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_ICON:
        return GridWidget(4, footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_BRAND:
        return BrandWidget(title, footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_BRAND_SIX:
        return SixBrandWidget(title, footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_BRAND_SEVEN:
        return SevenBrandWidget(footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_SELL_HOT:
        return GridWidget(3, footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_ACTIVITY_AREA:
        return HorizontalTabGoodsWidget(
            title, footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_SINGLE:
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_HOT_ZONE:
        return SingleImageWidget(false, footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_ACTIVITY_AREA_SINGLE:
        return HorizontalNoTabGoodsWidget(footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_HOT_SALE_AREA:
        return HotSaleWidget(title, footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_SINGLE_VIDEO:
        return SingleImageWidget(true, footDistance, mallPlateContentList);
      case MallTypeUtil.ITEM_TYPE_TEMPLATE_SPECIAL_ACTIVITY:
        return SpecialActivityWidget(footDistance, mallPlateContentList);
      default:
        return Container();
    }
  }
}
