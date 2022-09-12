import 'package:get/get.dart';
import 'package:sakura_anime/pages/recommend/recommend_logic.dart';

import 'home_logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogic());
    Get.lazyPut(() => RecommendLogic());

  }
}
