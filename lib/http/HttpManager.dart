import 'package:flutterapp/entity/base_entity.dart';
import 'package:flutterapp/entity/login_result_entity.dart';
import 'package:flutterapp/http/HttpParams.dart';
import 'package:flutterapp/http/HttpRequest.dart';

class HttpManager {
  static Map<String, dynamic> _getBaseMap() {
    Map<String, dynamic> params = Map();
    params[HttpParams.CHANNEL_CODE] = HttpParams.BASE_CHANNEL;
    return params;
  }

  static Future<T> loginByMobile<T>(
      String mobile, String verificationCode) async {
    Map<String, dynamic> params = _getBaseMap();
    params[HttpParams.APP_ID] = '2';
    params[HttpParams.MOBILE] = mobile;
    params[HttpParams.CHECK_CODE] = verificationCode;
    return await HttpRequest.request<T>("app/banggo/loginByMobile", params);
  }

  static Future<T> getResultBySiteMark<T>(String siteMark) async {
    Map<String, dynamic> params = _getBaseMap();
    params[HttpParams.SITE_MARK] = siteMark;
    return await HttpRequest.request<T>("display/getResultBySiteMark", params);
  }

  static Future<T> getConfigByKey<T>(String key) async {
    Map<String, dynamic> params = _getBaseMap();
    params[HttpParams.CONFIG_KEY] = key;
    return await HttpRequest.request<T>("display/getConfigByKey", params);
  }

  static Future<T> getProductList<T>(
      String productId, int pageNo, int pageSize) async {
    Map<String, dynamic> params = _getBaseMap();
    params[HttpParams.PRODUCT_ID] = productId;
    params[HttpParams.PAGE_NO] = pageNo;
    params[HttpParams.PAGE_SIZE] = pageSize;
    return await HttpRequest.request<T>("search/getProductList", params);
  }

  static Future<T> getFirstLevCates<T>() async {
    return await HttpRequest.request<T>(
        "display/getFirstLevCates", _getBaseMap());
  }

  static Future<T> getCateRelChild<T>(int cateId) async {
    Map<String, dynamic> params = _getBaseMap();
    params[HttpParams.CATE_ID] = cateId;
    return await HttpRequest.request<T>("display/getCateRelChild", params);
  }

  static Future<T> getUserInfo<T>() async {
    return await HttpRequest.request<T>(
        "user/banggo/getUserInfo", _getBaseMap());
  }

  static Future<T> getProductInfo<T>(
      String productId, String productSysCode) async {
    Map<String, dynamic> params = Map();
    params[HttpParams.CHANNEL_CODE] = productId;
    params[HttpParams.PRODUCT_SYS_CODE] = productSysCode;
    return await HttpRequest.request<T>("product/getProductInfo", params);
  }

  static Future<T> getProductDescription<T>(
      String productId, String productSysCode) async {
    Map<String, dynamic> params = Map();
    params[HttpParams.CHANNEL_CODE] = productId;
    params[HttpParams.PRODUCT_SYS_CODE] = productSysCode;
    return await HttpRequest.request<T>("product/getProductDescription", params);
  }

}
