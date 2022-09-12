import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();
  late PageController pageController;

  void onPageChange(page) {
    state.currPage.value = page;
  }
  void onBottomTap(int value) {
    state.currPage.value = value;
    pageController.jumpToPage(value);
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: state.currPage.value);
  }
}
