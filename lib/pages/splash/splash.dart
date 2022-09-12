import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakura_anime/common/api/apis.dart';
import 'package:sakura_anime/common/route/router.dart';

import '../../common/model/anime.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1),() {
      Get.offNamed(AppRouter.HOME);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        color: Colors.blue,
        onPressed: () async {
          Get.offNamed(AppRouter.HOME);
        },
        child: Text("ios button"),
      ),
    );
  }

  _SplashState();
}
