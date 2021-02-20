import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skiza/modules/authentication/auth_home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 7);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() async {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new AuthHome()));
  
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/images/skeezah_logo.svg",
                color: Color(0xFF626262),
                height: 80,
                width: 80,
              ),
            )
          ],
        ),
      ),
    );
  }
}
