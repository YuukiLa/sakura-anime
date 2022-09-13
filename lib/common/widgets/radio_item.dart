import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  const RadioItem(this._item, {super.key});

  @override
  Widget build(BuildContext context) {

      return Container(
          color: _item.isSelected ? Theme.of(context).primaryColor.withOpacity(.4) : Colors.white,
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_item.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: _item.isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: _item.isSelected
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                  ))
            ],
          ),
      );
  }
}

class RadioModel {
  late String text;
  late bool isSelected;

  RadioModel(this.text, this.isSelected);
}
