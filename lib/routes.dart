import 'package:demo_test/pages/DragDemo/draggableDemo.dart';
import 'package:demo_test/pages/bottm_clipper.dart';
import 'package:demo_test/pages/bottomAppBar/bottom_app_bar.dart';
import 'package:demo_test/pages/buttonNavigatorpages/bottomNavigate.dart';
import 'package:demo_test/pages/expansionTile.dart';
import 'package:demo_test/pages/expansion_panel_list.dart';
import 'package:demo_test/pages/filter.dart';
// import 'package:demo_test/pages/myTest.dart';
import 'package:demo_test/pages/right_back.dart';
import 'package:demo_test/pages/splash_screen.dart';
import 'package:demo_test/pages/tabBar/tab_bar.dart';
import 'package:demo_test/pages/tack_phote.dart';
import 'package:demo_test/pages/register.dart';
import 'package:demo_test/pages/searchAppBar/search_bar.dart';
import 'package:demo_test/pages/textAndButton.dart';
import 'package:demo_test/pages/wrapDemo.dart';
import 'package:flutter/material.dart';

import 'customRoute/pageChange.dart';

const routerName = [
  "登录",
  // "测试",
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
  "拍照、录像(未完成)"
];

Map<String, WidgetBuilder> routers = {
  "regist": (context) {
    return new Regist();
  },
  // "test": (context) {
  //   return new TestDemo();
  // },
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
  },
  "camera": (context) {
    return CameraApp();
  }
};
