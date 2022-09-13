import 'package:get/get.dart';

import 'directions_logic.dart';

class DirectionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DirectionsLogic());
  }
}
