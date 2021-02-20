import 'package:flutter/material.dart';
import 'package:skiza/core/components/app_bar.dart';
import 'package:skiza/core/components/auth_button.dart';
import 'package:skiza/modules/authentication/components/email_container_text_field.dart';
import 'package:skiza/modules/authentication/components/password_container_text_field.dart';
import 'package:skiza/modules/authentication/register/register_basic_details_step_2.dart';

class RegisterBasicDeatils  extends StatefulWidget {
  @override
  _RegisterBasicDeatilState createState() => _RegisterBasicDeatilState();
}

class _RegisterBasicDeatilState extends State<RegisterBasicDeatils > {
  final _signinFormkey = GlobalKey<FormState>();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _confirmPasswordcontroller = TextEditingController();


  void toNameDetails(){
  Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new RegisterBasicDeatilStepTwo()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: HomeAppBar(headTitle: "Sign up",),
      ),
      body: ListView(
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
                    "Step 1 of 3",
                    style: TextStyle(
                      color: Color(0xFF959595),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                 
                ],
              ),
            ),
     Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text("What is your email ?", style: TextStyle(
                      color: Color(0xFF6C6C6C),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                 EmailContainerTextField(
                    emailcontroller: _emailcontroller,
                  ),
                   Text("Create your password", style: TextStyle(
                      color: Color(0xFF6C6C6C),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                 PasswordContainerTextField(
                    passwordcontroller: _passwordcontroller,
                    showSuffixIcon: false,
                  ),
                    PasswordContainerTextField(
                    passwordcontroller: _confirmPasswordcontroller,
                    hintTextField: "Confirm your password",
                    showSuffixIcon: false,
                  ),
              ],
            ),
 
         
            AuthaSaveButton(
                    label: "Next",
                    labelColor: Color(0xFFC3D02B),
                    marginLeft: 30,
                    marginRight: 30,
                    buttonColor: Color(0xFF6B6B6B),
                    onPressButton: () => toNameDetails(),
                  )
        ],
      ),
    );
  }
}