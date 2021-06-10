import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/bean/MainBottomBean.dart';
import 'package:flutterapp/page/BaseWidget.dart';
import 'package:flutterapp/page/CategoryPage.dart';
import 'package:flutterapp/page/MallPage.dart';
import 'package:flutterapp/page/MinePage.dart';
import 'package:flutterapp/page/ShoppingCartPage.dart';

class MainPage extends BaseStatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends BaseState<MainPage> {
  var bottomIndex = 0;
  var _controller = PageController();

  List<Widget> pages = [
    MallPage(),
    CategoryPage(),
    ShoppingCartPage(),
    MinePage()
  ];

  List<MainBottomBean> bottomBeans = [
    MainBottomBean(
        'images/tab_home_normal.png', 'images/tab_home_select.png', '首页', ''),
    MainBottomBean('images/tab_category_normal.png',
        'images/tab_category_select.png', '分类', ''),
    // MainBottomBean('images/tab_sale.png', '', '潮牌馆', 'images/tab_sale_bg.png'),
    MainBottomBean('images/tab_shopper_normal.png',
        'images/tab_shopper_select.png', '购物车', ''),
    MainBottomBean(
        'images/tab_user_normal.png', 'images/tab_user_select.png', '我的', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          physics: BouncingScrollPhysics(),
          onPageChanged: _onPageChanged,
          children: pages,
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Stack(
        //     children: [
        //       Image(image: AssetImage('images/tab_sale_bg.png')),
        //       Center(
        //         child: Column(
        //           children: [
        //             Image(image: AssetImage('images/tab_sale.png')),
        //             Text(
        //               '潮牌馆',
        //               style: TextStyle(fontSize: 10, color: Colors.white),
        //             ),
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomSheet: FractionallySizedBox(
        //   heightFactor: 0.1,
        //   child: Row(
        //     children: bottomBeans.map((MainBottomBean bean) {
        //       return Container(
        //         decoration: BoxDecoration(
        //           image: DecorationImage(image: AssetImage(bean.bgPath)),
        //         ),
        //         child: Column(
        //           children: [
        //             Image(image: AssetImage(bean.iconPath)),
        //             Text(
        //               bean.title,
        //               style: TextStyle(
        //                   fontSize: 10,
        //                   color: bean.bgPath == ''
        //                       ? Constant.FF6A6A
        //                       : Colors.white),
        //             )
        //           ],
        //         ),
        //       );
        //     }).toList(),
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   ),
        // ),
        // bottomNavigationBar: BottomAppBar(
        //   color: Colors.white,
        //   child: Row(
        //     children: bottomBeans.map((MainBottomBean bean) {
        //       return Stack(
        //         children: [
        //           bean.bgPath == null
        //               ? Container()
        //               : Image(image: AssetImage(bean.bgPath)),
        //           Center(
        //             child: Column(
        //               children: [
        //                 Image(image: AssetImage(bean.iconPath)),
        //                 Text(
        //                   bean.title,
        //                   style: TextStyle(fontSize: 10, color: Constant.FF6A6A),
        //                 )
        //               ],
        //             ),
        //           )
        //         ],
        //       );
        //     }).toList(),
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   ),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onTap,
          currentIndex: bottomIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Constant.FF6A6A,
          unselectedItemColor: Colors.black,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          iconSize: 20,
          items: bottomBeans.map((MainBottomBean bean) {
            return BottomNavigationBarItem(
                label: bean.title,
                activeIcon: Image.asset(bean.activeIconPath),
                icon: Image.asset(bean.iconPath));
          }).toList(),
        ),
      ),
    );
  }

  _onPageChanged(int index) {
    setState(() {
      this.bottomIndex = index;
      // switch (index) {
      //   case 0:
      //   case 1:
      //     this.bottomIndex = index;
      //     break;
      //   default:
      //     this.bottomIndex = index + 1;
      //     break;
      // }
    });
  }

  _onTap(int index) {
    int page = -1;
    page = index;
    // switch (index) {
    //   case 0:
    //   case 1:
    //     page = index;
    //     break;
    //   case 3:
    //   case 4:
    //     page = index - 1;
    //     break;
    // }
    if (page != -1)
      setState(() {
        _controller.jumpToPage(page);
      });
  }
}
