import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/page/LoginPage.dart';
import 'package:flutterapp/state/BaseGetGoodsState.dart';
import 'package:flutterapp/widget/RecommendGoodsWidget.dart';
import 'package:get/get.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends BaseGetGoodsState<ShoppingCartPage> {
  @override
  void initState() {
    sendRequest('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text('购物车', style: TextStyle(fontSize: 17)))
            ],
          ),
          _emptyContent()
        ],
      )),
    );
  }

  Widget _emptyContent() {
    return Expanded(
      child: Container(
        color: Constant.F5F5F5,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('images/shopping_cart_empty.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text('购物车为空',
                        style:
                            TextStyle(fontSize: 14, color: Constant.ff333333)),
                  ),
                  Text('再忙，也要记得买点什么犒赏自己',
                      style: TextStyle(fontSize: 14, color: Constant.ff999999)),
                  FractionallySizedBox(
                      widthFactor: 0.3,
                      child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: RaisedButton(
                              color: Constant.FF4554,
                              textColor: Colors.white,
                              onPressed: () {
                                Get.to(() => LoginPage());
                              },
                              child: Text('去逛逛'),
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(vertical: 4)))),
                ],
              ),
            ),
            Text('推荐商品',
                style: TextStyle(fontSize: 14, color: Constant.ff333333)),
            RecommendGoodsWidget(_addCart(), goodsList)
          ],
        ),
      ),
    );
  }

  Widget _addCart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MaterialButton(
          onPressed: () {},
          color: Constant.FF4554,
          height: 25,
          textColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/shopping_cart_white.png', height: 20),
              Text('加入购物车')
            ],
          ),
        ),
        // RaisedButton(
        //     color: Constant.FF6A6A,
        //     textColor: Colors.white,
        //     onPressed: () {},
        //     child: Row(
        //       children: [
        //         Image.asset('images/shopping_cart_white.png'),
        //         Text('加入购物车', style: TextStyle(fontSize: 10))
        //       ],
        //     ),
        //     shape: StadiumBorder()),
      ],
    );
  }
}
