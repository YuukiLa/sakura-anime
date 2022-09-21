import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/radio_item.dart';
import 'directions_state.dart';

class DirectionsLogic extends GetxController {
  final DirectionsState state = DirectionsState();

  var regionData = <RadioModel>[];
  var typeData = <RadioModel>[];
  var yearData = <RadioModel>[];

  @override
  void onInit() {
    initFilter();

    super.onInit();
  }

  handleRegionChange(int index) {
    regionData[state.currRegionIndex].isSelected = false;
    regionData[index].isSelected = true;
    state.currRegionIndex = index;
    update(["regionList"]);
  }
  handleTypeChange(int index) {
    typeData[state.currTypeIndex].isSelected = false;
    typeData[index].isSelected = true;
    state.currTypeIndex = index;
    update(["typeList"]);
  }
  handleYearChange(int index) {
    yearData[state.currYearIndex].isSelected = false;
    yearData[index].isSelected = true;
    state.currYearIndex = index;
    update(["yearList"]);
  }

  void initFilter() {
    regionData.add(RadioModel('全部地区', true));
    regionData.add(RadioModel('日本', false));
    regionData.add(RadioModel('中国', false));
    regionData.add(RadioModel('欧美', false));
    typeData.add(RadioModel("全部风格", true));
    typeData.add(RadioModel("搞笑", false));
    typeData.add(RadioModel("运动", false));
    typeData.add(RadioModel("励志", false));
    typeData.add(RadioModel("热血", false));
    typeData.add(RadioModel("战斗", false));
    typeData.add(RadioModel("竞技", false));
    typeData.add(RadioModel("校园", false));
    typeData.add(RadioModel("青春", false));
    typeData.add(RadioModel("爱情", false));
    typeData.add(RadioModel("冒险", false));
    typeData.add(RadioModel("后宫", false));
    typeData.add(RadioModel("百合", false));
    typeData.add(RadioModel("治愈", false));
    typeData.add(RadioModel("萝莉", false));
    typeData.add(RadioModel("魔法", false));
    typeData.add(RadioModel("悬疑", false));
    typeData.add(RadioModel("推理", false));
    typeData.add(RadioModel("奇幻", false));
    typeData.add(RadioModel("科幻", false));
    typeData.add(RadioModel("游戏", false));
    typeData.add(RadioModel("神魔", false));
    typeData.add(RadioModel("恐怖", false));
    typeData.add(RadioModel("血腥", false));
    typeData.add(RadioModel("机战", false));
    typeData.add(RadioModel("战争", false));
    typeData.add(RadioModel("犯罪", false));
    typeData.add(RadioModel("历史", false));
    typeData.add(RadioModel("社会", false));
    typeData.add(RadioModel("职场", false));
    typeData.add(RadioModel("剧情", false));
    typeData.add(RadioModel("伪娘", false));
    typeData.add(RadioModel("耽美", false));
    typeData.add(RadioModel("童年", false));
    typeData.add(RadioModel("教育", false));
    typeData.add(RadioModel("亲子", false));
    typeData.add(RadioModel("真人", false));
    typeData.add(RadioModel("歌舞", false));
    typeData.add(RadioModel("肉番", false));
    typeData.add(RadioModel("美少女", false));
    typeData.add(RadioModel("轻小说", false));
    typeData.add(RadioModel("吸血鬼", false));
    typeData.add(RadioModel("女性向", false));
    typeData.add(RadioModel("泡面番", false));
    typeData.add(RadioModel("欢乐向", false));
    yearData.add(RadioModel("全部年份", true));
    yearData.add(RadioModel("2022", false));
    yearData.add(RadioModel("2021", false));
    yearData.add(RadioModel("2020", false));
    yearData.add(RadioModel("2019", false));
    yearData.add(RadioModel("2018", false));
    yearData.add(RadioModel("2017", false));
    yearData.add(RadioModel("2016", false));
    yearData.add(RadioModel("2015", false));
    yearData.add(RadioModel("2014", false));
    yearData.add(RadioModel("2013", false));
    yearData.add(RadioModel("2012", false));
    yearData.add(RadioModel("2011", false));
    yearData.add(RadioModel("2010", false));
    yearData.add(RadioModel("2009", false));
    yearData.add(RadioModel("2008", false));
    yearData.add(RadioModel("2007", false));
    yearData.add(RadioModel("2006", false));
    yearData.add(RadioModel("2005", false));
    yearData.add(RadioModel("2004", false));
    yearData.add(RadioModel("2003", false));
    yearData.add(RadioModel("2002", false));
    yearData.add(RadioModel("2001", false));
    yearData.add(RadioModel("2000", false));
  }
}
