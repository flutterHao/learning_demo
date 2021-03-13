import 'package:demo_test/customRoute/pageChange.dart';
import 'package:demo_test/pages/DragDemo/draggableDemo.dart';
import 'package:demo_test/pages/bottomAppBar/bottom_app_bar.dart';
import 'package:demo_test/pages/buttonNavigatorpages/bottomNavigate.dart';
import 'register.dart';
import 'package:demo_test/pages//searchAppBar/search_bar.dart';
import 'package:demo_test/pages/wrapDemo.dart';
import 'package:flutter/material.dart';
import 'textAndButton.dart';
import 'filter.dart';
import 'tabBar/tab_bar.dart';
import 'wrapDemo.dart';
import 'expansionTile.dart';
import 'expansion_panel_list.dart';
import 'bottm_clipper.dart';
import 'splash_screen.dart';
import 'right_back.dart';
import 'myTest.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textStyle = TextStyle(fontSize: 20.0, color: Colors.orange);
  @override
  Widget build(BuildContext context) {
    var routeLists = routers.keys.toList();
    return MaterialApp(
      routes: routers,
      title: 'mylist',
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title ?? ""),
        ),

        body: new Container(
          child: new ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, routeLists[index]);
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10.0),
                  height: 50.0,
                  child: Text('$index  ' + routerName[index]),
                ),
              );
            },
            itemCount: routers.length,
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

const routerName = [
  "登录",
  "测试页面"
      "文本和按钮",
  "底部栏",
  "底部栏2",
  "页面切换",
  "图片过滤器",
  "TabBar",
  "顶部搜索栏",
  "Wrap流式布局",
  "扩展组件",
  "可扩展组件列表",
  "贝塞尔曲线",
  "闪屏动画",
  "右滑返回",
  "Draggable控件实例",
];

Map<String, WidgetBuilder> routers = {
  "regist": (context) {
    return new Regist();
  },
  "testDemo": (context) {
    return new TestDemo();
  },
  "textAndButton": (context) {
    return new DemoT();
  },
  "bottmNavigator": (context) {
    return new BottomNavigate();
  },
  "bottomAppBar": (context) {
    return new BottomBarTest();
  },
  "pageChange": (context) {
    return new FirstPage();
  },
  "iamgeFilter": (context) {
    return new Filter();
  },
  "tabBar": (context) {
    return new KeepAliveBar();
  },
  "searchAppBar": (context) {
    return new SearchBarTest();
  },
  "wrapDemo": (context) {
    return new WrapDemo();
  },
  "ExpansionTile": (context) {
    return new ExpansionTileDemo();
  },
  "ExpansionPanelList": (context) {
    return new ExpansionPanelListDemo();
  },
  "BottomClip": (context) {
    return new BottomClipDemo();
  },
  "SplashScreen": (context) {
    return new SplashScreenDemo();
  },
  "RightBackDemo": (context) {
    return new RightBackDemo();
  },
  "DraggableDemo": (context) {
    return new DraggableDemo();
  }
};
