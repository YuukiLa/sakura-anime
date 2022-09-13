import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/radio_item.dart';
import 'directions_state.dart';

class DirectionsLogic extends GetxController {
  final DirectionsState state = DirectionsState();

  var sampleData = <RadioModel>[];

  @override
  void onInit() {

    sampleData.add(RadioModel(
        '全部', true));
    sampleData.add(
        RadioModel('剧情', false));
    sampleData.add(RadioModel(
        '恐怖', false));
    sampleData.add(RadioModel(
        '啦啦啦', false));
    super.onInit();
  }

  handleChangeRaiod(int index) {
    for (var element in sampleData) {element.isSelected=false;}
    sampleData[index].isSelected = true;
    update(["list"]);
    print(index);

  }

}
