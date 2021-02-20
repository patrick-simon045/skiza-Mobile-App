import 'package:flutter/material.dart';
import 'package:skiza/core/components/app_bar.dart';
import 'package:skiza/core/components/auth_button.dart';
import 'package:skiza/modules/authentication/components/email_container_text_field.dart';
import 'package:skiza/modules/authentication/components/password_container_text_field.dart';
import 'package:skiza/modules/home/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _signinFormkey = GlobalKey<FormState>();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();

  void toHome() {
  Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new Home()));
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: HomeAppBar(headTitle: "Login",),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(left: 30, top: 70),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back,",
                    style: TextStyle(
                      color: Color(0xFF6B6B6B),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    " Please login to continue",
                    style: TextStyle(
                      color: Color(0xFF848484),
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Form(
              key: _signinFormkey,
              // autovalidate: model.isValidate,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EmailContainerTextField(
                    emailcontroller: _emailcontroller,
                  ),
                  PasswordContainerTextField(
                    passwordcontroller: _passwordcontroller,
                  ),
                  AuthaSaveButton(
                    label: "Continue",
                    labelColor: Color(0xFFC3D02B),
                    marginLeft: 30,
                    marginRight: 30,
                    buttonColor: Color(0xFF6B6B6B),
                    onPressButton: () => toHome(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
