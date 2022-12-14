import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Global {
  static init() {
    WidgetsFlutterBinding.ensureInitialized();
    setSystemUi();
  }
  static void setSystemUi() {

    if (GetPlatform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // statusBarBrightness: Brightness.light,
        // statusBarIconBrightness: Brightness.dark,
        // systemNavigationBarDividerColor: Colors.transparent,
        // systemNavigationBarColor: Colors.white,
        // systemNavigationBarIconBrightness: Brightness.dark,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}