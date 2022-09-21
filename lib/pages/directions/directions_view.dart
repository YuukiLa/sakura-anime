import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakura_anime/common/widgets/my_expansion_panel.dart';
import 'package:sakura_anime/common/widgets/my_expansion_tile.dart';
import 'package:sakura_anime/common/widgets/radio_group.dart';

import '../../common/widgets/radio_item.dart';
import 'directions_logic.dart';

class DirectionsPage extends GetView<DirectionsLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Obx(() {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: MyExpansionPanelList(
                  // trailing: SizedBox(
                  //   width: 10,
                  //   height: 10,
                  // ),
                  elevation: 0,
                  animationDuration: const Duration(milliseconds: 500),
                  children: [
                    MyExpansionPanel(
                      backgroundColor: Colors.transparent,
                      isExpanded: controller.state.isExpand.value,
                      headerBuilder: (c, i) {
                        return Column(
                          children: [
                            Container(
                              height: 20,
                              margin: const EdgeInsets.all(5),
                              child: GetBuilder<DirectionsLogic>(
                                id: "regionList",
                                builder: (state) {
                                  return RadioGroup(controller.regionData,
                                      controller.handleRegionChange);
                                },
                              ),
                            ),
                          ],
                        );
                      },
                      body: Column(
                        children: [
                          Container(
                            height: 20,
                            margin: const EdgeInsets.all(5),
                            child: GetBuilder<DirectionsLogic>(
                              id: "typeList",
                              builder: (state) {
                                return RadioGroup(controller.typeData,
                                    controller.handleTypeChange);
                              },
                            ),
                          ),
                          Container(
                            height: 20,
                            margin: const EdgeInsets.all(5),
                            child: GetBuilder<DirectionsLogic>(
                              id: "yearList",
                              builder: (state) {
                                return RadioGroup(controller.yearData,
                                    controller.handleYearChange);
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(
                  child: Center(
                child: GestureDetector(
                    onTap: () {
                      controller.state.isExpand.value =
                          !controller.state.isExpand.value;
                    },
                    child: Text(controller.state.isExpand.value ? "收起" : "展开")),
              ))

            ],
          );
        }));
  }
}
