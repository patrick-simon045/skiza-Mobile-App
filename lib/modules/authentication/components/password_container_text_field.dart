import 'package:flutter/material.dart';

class PasswordContainerTextField extends StatelessWidget {
  final TextEditingController passwordcontroller;
  String hintTextField = "";
  final bool showSuffixIcon;
  PasswordContainerTextField(
      {@required this.passwordcontroller, this.hintTextField = "Password",this.showSuffixIcon = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 15),
      child: Material(
        elevation: 0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: passwordcontroller,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                suffixIcon: showSuffixIcon ?IconButton(
                  icon: Icon(Icons.remove_red_eye_sharp),
                  onPressed: () {},
                ):Text(""),
                hintStyle: TextStyle(
                    color: Color(0xFFC2C2C2),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                hintText: '$hintTextField'),
            validator: (value) {
              if (value.isEmpty)
                return "wrong password";
              else
                return null;
            },
          ),
        ),
      ),
    );
  }
}
