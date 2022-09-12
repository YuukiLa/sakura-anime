import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import 'recommend_logic.dart';

class RecommendPage extends GetView<RecommendLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.fromLTRB(10, 3, 20, 3),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(19.0)),
                color: Colors.black12),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                Text(
                  "搜索",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                )
              ],
            ),
          ),
        ),
        body: Obx(() {
          return SmartRefresher(
            controller: controller.refreshController,
            onRefresh: controller.onRefresh,
            onLoading: controller.onLoading,
            enablePullUp: true,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white12),
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: GridView.builder(
                  itemCount: controller.state.data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                      child: Column(
                        children: [
                          Expanded(child: ExtendedImage.network(
                              controller.state.data[index].img,
                              width: double.infinity,
                              cache: true,
                              fit: BoxFit.cover)),
                          Container(
                            child: Text(controller.state.data[index].title),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          );
        }));
  }
}
