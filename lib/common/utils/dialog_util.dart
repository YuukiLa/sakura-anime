import 'package:flutter_easyloading/flutter_easyloading.dart';

class DialogUtil {
  static showLoading() {
    EasyLoading.show(
        status: '加载中...', maskType: EasyLoadingMaskType.black,dismissOnTap: false);
  }

  static dismiss() {
    EasyLoading.dismiss();
  }

  static toast(String text) {
    EasyLoading.showToast(text, toastPosition: EasyLoadingToastPosition.bottom);
  }
}