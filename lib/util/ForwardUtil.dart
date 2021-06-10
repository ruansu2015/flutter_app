import 'package:flutterapp/page/GoodsDetailPage.dart';
import 'package:get/get.dart';

class ForwardUtil {
  static void forwardGoodsDetail(String storeId, String productSysCode) {
    Get.to(GoodsDetailPage(storeId, productSysCode));
  }
}
