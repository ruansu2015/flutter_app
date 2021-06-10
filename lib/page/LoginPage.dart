import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/entity/login_result_entity.dart';
import 'package:flutterapp/http/HttpManager.dart';
import 'package:flutterapp/http/HttpParams.dart';
import 'package:flutterapp/util/ToastUtil.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int second = 0;
  bool isCountDown = false;

  TextEditingController phone = TextEditingController(),
      code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    top: (ScreenUtil.getInstance().screenHeight * 0.05)),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil.getInstance().screenHeight * 0.15),
                child: Text('登录/注册',
                    style: TextStyle(
                        fontSize: 20,
                        color: Constant.ff333333,
                        fontWeight: FontWeight.bold))),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  maxLines: 1,
                  controller: phone,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: '请输入手机号',
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Constant.fff2f3f4)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Constant.fff2f3f4)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Constant.fff2f3f4)),
                      labelStyle:
                          TextStyle(fontSize: 14, color: Constant.ff333333),
                      hintStyle:
                          TextStyle(fontSize: 14, color: Constant.ff999999)),
                ),
                SizedBox(height: 24),
                TextField(
                  controller: code,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: '请输入验证码',
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Constant.fff2f3f4)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Constant.fff2f3f4)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Constant.fff2f3f4)),
                      labelStyle:
                          TextStyle(fontSize: 14, color: Constant.ff333333),
                      hintStyle:
                          TextStyle(fontSize: 14, color: Constant.ff999999),
                      suffixIconConstraints: BoxConstraints(maxHeight: 20),
                      suffixIcon: _getSuffixIcon()),
                ),
                SizedBox(height: 24),
                MaterialButton(
                    enableFeedback: false,
                    onPressed: login,
                    minWidth: double.infinity,
                    color: Constant.FF6A6A,
                    disabledColor: Constant.FFB4B4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '登录',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().screenHeight * 0.9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('若您输入的手机号未注册，将为您直接注册完成登录即视为同意',
                      style: TextStyle(fontSize: 12, color: Constant.ff999999)),
                  Text('《邦购用户协议》',
                      style: TextStyle(fontSize: 12, color: Constant.FF6A6A))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void countDown() {
    if (RegexUtil.isMobileSimple(phone.text)) {
      TimerUtil timerUtil = TimerUtil(mInterval: 1000, mTotalTime: 60 * 1000);
      timerUtil.setOnTimerTickCallback((millisUntilFinished) {
        second = millisUntilFinished ~/ 1000;
        isCountDown = second > 0;
        setState(() {});
      });
      timerUtil.startCountDown();
    } else
      ToastUtil.showToast('请填写正确手机号');
  }

  Widget _getSuffixIcon() {
    return isCountDown
        ? Text('${second}s重新获取',
            style: TextStyle(color: Constant.FF4554, fontSize: 14))
        : GestureDetector(
            onTap: countDown,
            child: Text('获取验证码',
                style: TextStyle(color: Constant.FF4554, fontSize: 14)));
  }

  getCode() {
    if (phone.text.toString().length != 11) {
      ToastUtil.showToast('请填写正确手机号');
    }
  }

  login() async {
    String phone = this.phone.text.toString();
    String code = this.code.text.toString();
    if (phone.length != 11) {
      ToastUtil.showToast('请填写正确手机号');
    } else if (code.toString().length != 6) {
      ToastUtil.showToast('验证码错误');
    } else {
      LoginResultEntity baseEntity =
          await HttpManager.loginByMobile<LoginResultEntity>(phone, code);
      if (baseEntity != null) {
        SpUtil.putString(HttpParams.APP_TOKEN, baseEntity.token);
        Get.back();
      }
    }
  }
}
