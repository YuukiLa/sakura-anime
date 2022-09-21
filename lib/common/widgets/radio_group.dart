import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sakura_anime/common/widgets/radio_item.dart';

class RadioGroup extends StatelessWidget {

  final List<RadioModel> data;
  final Function onChange;
  const RadioGroup(this.data,this.onChange,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          //highlightColor: Colors.red,
          onTap: () {
            onChange(index);
          },
          child: RadioItem(data[index]),
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return const SizedBox(
        width: 10,
      );
    },
    );
  }
}
