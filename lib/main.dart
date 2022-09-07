import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_cupertino_app.dart';
import 'package:sakura_anime/common/route/page.dart';
import 'package:sakura_anime/common/route/router.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
      headerBuilder: () => const ClassicHeader(),
      footerBuilder: () => const ClassicFooter(),
      hideFooterWhenNotFull: true,
      headerTriggerDistance: 80,
      maxOverScrollExtent: 100,
      footerTriggerDistance: 150,
      child: GetCupertinoApp(
        title: 'Sakura anime',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          RefreshLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        locale: const Locale('zh', 'CN'),
        // localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        //   //print("change language");
        //   return locale;
        // },
        getPages: AppPage.pages(),
        initialRoute: AppRouter.INITIAL,
        builder: EasyLoading.init(),
      ),

    );
  }
}
