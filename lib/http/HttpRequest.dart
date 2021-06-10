import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/entity/base_entity.dart';
import 'package:flutterapp/http/HttpParams.dart';
import 'package:flutterapp/util/ToastUtil.dart';

class HttpRequest {
  static const int TIME = 15 * 1000;

  static Dio _dio;

  static Dio _getDio() {
    if (_dio == null) {
      _dio = Dio(BaseOptions(
          sendTimeout: TIME,
          connectTimeout: TIME,
          receiveTimeout: TIME,
          baseUrl: Constant.DOMIN));
      _dio.interceptors.add(HeadInterceptor());
      if (Constant.DEBUG)
        _dio.interceptors.add(LogInterceptor(
            request: false,
            requestBody: true,
            responseHeader: false,
            responseBody: true));
    }
    return _dio;
  }

  // ignore: missing_return
  static Future<T> request<T>(String url, Map<String, dynamic> params) async {
    Response response = await _getDio().post(url, data: params);
    if (response.statusCode == HttpStatus.ok) {
      BaseEntity<T> entity = BaseEntity<T>().fromJson(response.data);
      if (entity.ok)
        return entity.result;
      else
        ToastUtil.showToast(entity.message);
    } else {
      ToastUtil.showToast(response.statusMessage);
    }
  }
}

class HeadInterceptor extends InterceptorsWrapper {
  static String _platform;

  Future<String> _getPlatForm() async {
    if (_platform == null || _platform.isEmpty) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        _platform = androidInfo.manufacturer + " " + androidInfo.model;
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        _platform = iosInfo.model;
      }
    }
    return _platform;
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers[HttpParams.APP_ID] = '2';
    String appToken = SpUtil.getString(HttpParams.APP_TOKEN);
    if (appToken != null && appToken.isNotEmpty)
      options.headers[HttpParams.APP_TOKEN] = appToken;
    String platform = await _getPlatForm();
    if (platform != null && platform.isNotEmpty)
      options.headers[HttpParams.PLATFORM] = platform;
    super.onRequest(options, handler);
  }
}
