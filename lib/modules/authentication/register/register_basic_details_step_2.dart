import 'package:flutter/material.dart';
import 'package:skiza/core/components/app_bar.dart';
import 'package:skiza/core/components/auth_button.dart';
import 'package:skiza/modules/authentication/components/name_container_text_field.dart';

class RegisterBasicDeatilStepTwo  extends StatefulWidget {
  @override
  _RegisterBasicDeatilStepTwotate createState() => _RegisterBasicDeatilStepTwotate();
}

class _RegisterBasicDeatilStepTwotate extends State<RegisterBasicDeatilStepTwo > {
  final _signinFormkey = GlobalKey<FormState>();

  TextEditingController _namecontroller = TextEditingController();

  void toProfileDetails(){

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
                    "Step 2 of 3",
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
                 Text("What is should we call you ?", style: TextStyle(
                      color: Color(0xFF6C6C6C),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                 NameContainerTextField(
                    namecontroller: _namecontroller,
                  ),
                   
              ],
            ),
 
         
            AuthaSaveButton(
                    label: "Next",
                    labelColor: Color(0xFFC3D02B),
                    marginLeft: 30,
                    marginRight: 30,
                    buttonColor: Color(0xFF6B6B6B),
                    onPressButton: () => toProfileDetails(),
                  )
        ],
      ),
    );
  }
}