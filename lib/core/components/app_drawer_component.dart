import 'package:flutter/material.dart';
import 'package:skiza/core/components/line_separator.dart';
import 'package:skiza/models/app_drawer_model.dart';

class AppDrawerComponent extends StatelessWidget {
  void onChooseDrawerSelection(BuildContext context, String selectionId) {
  Navigator.pop(context, selectionId);
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _widht = MediaQuery.of(context).size.width;
    return Column(
      children:
          AppDrawerModel.defaultDrawers().map((AppDrawerModel appDrawerModel) {
        return GestureDetector(
          child: Container(
            color: Colors.transparent,
             height:_height/13 ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LineSeperator(color: Color(0xFFC2C2C2)),
                Text(
                  appDrawerModel.title,
                  style: TextStyle(),
                )
              ],
            ),
          ),
          onTap: () => onChooseDrawerSelection(context, appDrawerModel.id),
        );
      }).toList(),
    );
  }
}
