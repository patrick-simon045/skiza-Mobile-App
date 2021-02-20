import 'package:flutter/material.dart';
import 'package:skiza/core/components/search_component.dart';

class HomeAppBarComponent extends StatelessWidget {
  final TextEditingController namecontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: SearchComponentContainerTextField(
                namecontroller: namecontroller,
              ),
            ),

             // Expanded(child: IconButton(icon: (Icon(Icons.book)),onPressed: (){},)),
            //Expanded(child: IconButton(icon: (Icon(Icons.book)),onPressed: (){},)),
          
          ],
        ),
        Row(children: [
          
        ],)
      ],
    );
  }
}
