import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skiza/core/components/auth_button.dart';
import 'package:skiza/modules/authentication/login/login.dart';
import 'package:skiza/modules/authentication/register/register_basic_details.dart';

class AuthHome extends StatefulWidget {
  @override
  _AuthHomeState createState() => _AuthHomeState();
}

class _AuthHomeState extends State<AuthHome> {
  void toLogin() {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new Login()));
  }

  void toSignUp() {
    
   Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new RegisterBasicDeatils()));
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            height: (_height / 2) + 170,
            width: _width,
            child: Material(
              elevation: 0,
              child: Center(
                child: SvgPicture.asset(
                  "assets/images/skeezah_logo.svg",
                  color: Color(0xFF626262),
                  height: 80,
                  width: 80,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: (_height / 2) + 172),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AuthaSaveButton(
                  label: "login",
                  labelColor: Color(0xFFC3D02B),
                  marginLeft: 30,
                  marginRight: 30,
                  buttonColor: Color(0xFF6B6B6B),
                  onPressButton: () => toLogin(),
                ),
                AuthaSaveButton(
                  label: "sign up",
                  labelColor: Color(0xFFC3D02B),
                  marginLeft: 30,
                  marginRight: 30,
                  buttonColor: Color(0xFF6B6B6B),
                  onPressButton: () => toSignUp(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
