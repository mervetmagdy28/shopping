import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({Key? key, required this.hintText, required this.labelText, required this.flag}) : super(key: key);
  final String? hintText;
  final String? labelText;
  final bool flag;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: flag,
      cursorColor: Color(0xFF02C568),
      decoration: InputDecoration(
          hintText: "$hintText",
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color(0xFF02C568), width: 2)),
          focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:Color(0xFF02C568), width: 2)),
          labelText: "$labelText",
          labelStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: 16
          )
      ),


    );
  }
}
