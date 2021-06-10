import 'package:flustars/flustars.dart';
import 'package:flutterapp/http/HttpParams.dart';

class UserCenter {
  static bool isLogin() {
    return ObjectUtil.isNotEmpty(SpUtil.getString(HttpParams.APP_TOKEN));
  }
}
