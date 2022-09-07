import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sakura_anime/common/route/router.dart';
import 'package:sakura_anime/pages/splash/splash.dart';
import 'package:sakura_anime/pages/splash/splash_binding.dart';

class AppPage {
  static List<GetPage> pages() {
    return [
      GetPage(
          name: AppRouter.INITIAL,
          page: ()=> Splash(),
          binding: SplashBinding()
      )
    ];
  }
}