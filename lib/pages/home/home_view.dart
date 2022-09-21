import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakura_anime/common/widgets/keep_alive_wrapper.dart';
import 'package:sakura_anime/pages/directions/directions_index.dart';
import 'package:sakura_anime/pages/recommend/recommend_view.dart';

import 'home_logic.dart';

class HomePage extends GetView<HomeLogic> {

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),
              label: '首页'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions),
              activeIcon: Icon(Icons.directions),
              label: '目录'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_run),
              activeIcon: Icon(Icons.directions_run),
              label: '追番'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person),
              label: '我的'),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        showUnselectedLabels: true,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        currentIndex: controller.state.currPage.value,
        onTap: controller.onBottomTap,
        type: BottomNavigationBarType.fixed,
      ),
      body: PageView(
        children: [
          KeepAliveWrapper(RecommendPage()),
          KeepAliveWrapper(DirectionsPage()),
          Container(),
          Container(),
        ],
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: controller.onPageChange,
      ),
    ));
  }
}
