import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({Key? key, required this.image, required this.categoryName}) : super(key: key);
  final String ?image;
  final String ?categoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
         children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset("$image"),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                      offset:Offset (2,2),
                      color: Color(0x2749588D),blurRadius: 20
                  )
                ]
            ),
          ),
          SizedBox(height: 8,),
          Center(
            child: Container(
              width: 60,
              height: 40,
              child: Text("$categoryName", style: TextStyle(fontSize: 12),),
            ),
          )
        ],
      ),
    );
  }
}
