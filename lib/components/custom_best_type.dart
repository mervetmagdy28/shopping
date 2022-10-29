import 'package:flutter/material.dart';

import '../detials_page.dart';

class CustomBestType extends StatelessWidget {
  const CustomBestType({Key? key,required this.image,required this.typeName, required this.description,required this.price}) : super(key: key);
  final String? image;
  final String? typeName;
  final String? description;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 380,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 250,
              child: Image(image: AssetImage("$image"))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(),));
              },
                child: Text("$typeName", )),
          ),
          Text("$description",style: TextStyle(
              color: Colors.grey[400],
              fontSize: 10
          ), ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Text("\$$price", style: TextStyle(color: Color(0xFF02C568)),),
          )

        ],
      ),
    );
  }
}
