import 'package:flutter/material.dart';

class SearchComponentContainerTextField extends StatelessWidget {
  final TextEditingController namecontroller;

  SearchComponentContainerTextField({@required this.namecontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 22, right: 4, top: 1, bottom: 6
        ),
      child: Material(
        elevation: 0,
        child: Container(
         width:MediaQuery.of(context).size.width/2 ,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
             color: Color(0xFFE4E4E4),
            //color: Color(0xFFE4E4E4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: namecontroller,
            textAlign: TextAlign.start, 
                       
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_outlined),
                hintStyle: TextStyle(
                    color: Color(0xFFC2C2C2),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                hintText: 'enter word'),
            validator: (value){
             
            },
          ),
        ),
      ),
    );
  }
}
