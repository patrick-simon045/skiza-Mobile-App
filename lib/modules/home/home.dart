import 'package:flutter/material.dart';
import 'package:skiza/core/components/home_app_bar_component.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:HomeAppBarComponent(),
      ),
    );
  }
}