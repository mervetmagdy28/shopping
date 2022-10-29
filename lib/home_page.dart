import 'package:flutter/material.dart';
import 'package:shopping/components/custom_best_type.dart';
import 'package:shopping/components/custom_categore.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: TextField(

              cursorColor: Color(0xFF02C568),

              decoration: InputDecoration(

                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.grey),borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Color(0xFF02C568)),borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.search,color: Color(0xFF02C568),),
               ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 30),
            child: Text("Categories", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomCategory(image:"assets/sport-shoe.png",categoryName: "Men", ),
                CustomCategory(image:"assets/high-heels.png",categoryName: "Women", ),
                CustomCategory(image:"assets/lamp.png",categoryName: "Devices", ),
                CustomCategory(image:"assets/control.png",categoryName: "Play Station", ),
                CustomCategory(image:"assets/headphone.png" ,categoryName: "Heap Phone"),


              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Row(
              children: [
                Text("Best Selling", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 170),
                  child: Text("See all", style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16
                  ),),
                ),

              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child:CustomBestType(image:"assets/Picture14.png" ,description:"bring and njckcmk" ,price: 255 ,typeName: "BeoPlay Speaker",)

              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child:CustomBestType(image:"assets/1-m00-21-ed-rb8bwmbk1wgadz8_aai9rijgk7q405.png" ,description:"see watch" ,price: 500 ,typeName: "own Watch",)

              ),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child:CustomBestType(image:"assets/Picture14.png" ,description:"bring and njckcmk" ,price: 255 ,typeName: "BeoPlay Speaker",)

              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child:CustomBestType(image:"assets/1-m00-21-ed-rb8bwmbk1wgadz8_aai9rijgk7q405.png" ,description:"see watch" ,price: 500 ,typeName: "own Watch",)

              ),
            ],
          )
        ],
      ),
    );
  }
}
