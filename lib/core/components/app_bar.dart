import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final String headTitle;
  HomeAppBar({@required this.headTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      title: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
          ),
          Text(
            "$headTitle",
            style: TextStyle(
                color: Color(0xFF6B6B6B),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )
        ],
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios)),
    );
  }
}
