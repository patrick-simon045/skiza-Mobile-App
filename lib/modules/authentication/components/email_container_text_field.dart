import 'package:flutter/material.dart';

class EmailContainerTextField extends StatelessWidget {
  final TextEditingController emailcontroller;

  EmailContainerTextField({@required this.emailcontroller});

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
            controller: emailcontroller,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                    color: Color(0xFFC2C2C2),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                hintText: 'Enter your email'),
            validator: (value) {
              if (value.isEmpty || !value.contains("@"))
                return "enter correct or valid mail";
              else
                return null;
            },
          ),
        ),
      ),
    );
  }
}
