import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:sakura_anime/common/api/apis.dart';
import 'package:sakura_anime/common/utils/dialog_util.dart';

import 'recommend_state.dart';

class RecommendLogic extends GetxController {
  final RecommendState state = RecommendState();
  late RefreshController refreshController;

  @override
  void onInit() {
    super.onInit();
    refreshController = RefreshController();
    getRecommend(true);
  }

  getRecommend(bool isRefresh) async {
    DialogUtil.showLoading();
    var resp = await Apis.getRecommend(state.currPage);
    if(isRefresh) {
      state.data.clear();
    }
    state.data.addAll(resp);
    DialogUtil.dismiss();
  }

  Future<void> onRefresh() async {
    state.currPage = 0;
    await getRecommend(true);
    refreshController.refreshCompleted();
  }

  Future<void> onLoading() async {
    state.currPage++;
    await getRecommend(false);
    refreshController.loadComplete();
  }
}
