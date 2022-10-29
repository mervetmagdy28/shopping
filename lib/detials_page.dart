import 'package:flutter/material.dart';
import 'package:shopping/home_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Column(
            children: [
              Text("Price",style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12
              ),),
              Text("\$255", style: TextStyle(
                color: Color(0xFF02C568),
              ),
              )
            ],
          )
          ),
          BottomNavigationBarItem(
              label: "",
              icon:GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
                },
                child: Container(
                  width: 150,
                  height: 60,
                  child: Center(child: Text("ADD", style: TextStyle(color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Color(0xFF02C568),
                  borderRadius: BorderRadius.circular(12)
                  ),
                ),
              )
          )
            ],
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            child: Stack(
              children: [
                Image(image: AssetImage("assets/Picture17.png")),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 20),
                  child: Icon(Icons.arrow_back_ios_new,color: Colors.grey[500],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65, left: 350),
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Icon(Icons.star_border),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nike Dri-FIT Long Sleeve", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30 ),
                  child: Container(
                    height: 50,
                    width: 160,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 55),
                          child: Text("Size", style: TextStyle(color: Colors.grey[500], fontSize: 16),),
                        ),
                        Text("XL",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                       border: Border.all(width: 1,color: Colors.grey)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 50,
                    width: 160,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 45),
                          child: Text("Color", style: TextStyle(color: Colors.grey[500], fontSize: 16),),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Color(0xFF324184),

                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 1,color: Colors.grey)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text("Details", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                Text("The radiance lives on in the Nike Air Force 1 '07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.",
                  style:TextStyle(color: Colors.grey[600]) ,)

              ],
            ),
          )
        ],
      ),
    );
  }
}
