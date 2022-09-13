import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/radio_item.dart';
import 'directions_logic.dart';

class DirectionsPage extends GetView<DirectionsLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 20,
              margin: const EdgeInsets.all(5),
              child: GetBuilder<DirectionsLogic>(
                id: "list",
                builder: (state) {
                  return ListView.separated(
                    itemCount: controller.sampleData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: InkWell(
                          //highlightColor: Colors.red,
                          onTap: () {
                            controller.handleChangeRaiod(index);
                          },
                          child: RadioItem(controller.sampleData[index]),
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                  },
                  );
                },
              ) ,
            ),
          )
        ],
      )
      );

  }
}
