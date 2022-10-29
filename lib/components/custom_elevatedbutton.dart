import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, required this.text,required this.nextFunc}) : super(key: key);
  final String ?text;
  final Widget ? nextFunc;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: (){

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>nextFunc!));
    },
    child: Text("$text", style: TextStyle(color: Colors.white,fontSize: 16),),

    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color(0xFF02C568)),
    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20, horizontal: 110)),
    shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
    borderRadius:BorderRadius.all(Radius.circular(8))
    )
)
),
);
  }
}
