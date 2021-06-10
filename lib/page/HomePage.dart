import 'package:flutter/material.dart';
import 'package:flutterapp/view/DiscoveryView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _title = ['关注', '发现', '我秀'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: _title.length,
        child: Column(
          children: <Widget>[
            TabBar(
              tabs: _title
                  .map((e) => Tab(
                        text: e,
                      ))
                  .toList(),
              isScrollable: true,
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(
                children: <Widget>[
                  DiscoveryView(),
                  Center(),
                  Center(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
