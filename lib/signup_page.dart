import 'package:flutter/material.dart';
import 'package:shopping/signin_page.dart';

import 'components/custom_elevatedbutton.dart';
import 'components/custom_textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      body: ListView(
        children: [
          Column(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                 child: Row(
                   children: [
                     GestureDetector(
                       onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn(),));
                       },
                         child: Icon(Icons.arrow_back_ios_new, size: 30,color: Colors.grey,)
                     )
                   ],
                 ),

               ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 30),
                 child: Container(
                   width: 350,
                   height: 550,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                       color: Colors.white,
                       boxShadow:[
                         BoxShadow(
                             offset: Offset(5,5),
                             color: Colors.grey,blurRadius: 20
                         ),

                       ]
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 20, left: 15,bottom: 7),
                             child: Text("Sign Up",style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 36,
                             ),),
                           ),

                         ],
                       ),
                       Center(
                         child: Container(
                             width: 320,
                             child: CustomTextFeild(flag: false,labelText: "Name",hintText: "enter your name",)
                         ),
                       ),
                       SizedBox(
                         height: 50,
                       ),
                       Center(
                         child: Container(
                             width: 320,
                             child: CustomTextFeild(flag: false,labelText: "Email",hintText: "enter your email",)
                         ),
                       ),
                       SizedBox(
                         height: 30,
                       ),
                       Center(
                           child: Container(
                               width: 320,
                               child: CustomTextFeild(labelText: 'Password', hintText: 'enter your password',flag: true))
                       ),


                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 22),
                         child:CustomElevatedButton(nextFunc: SignIn(), text: ' SIGN UP',),

                       )
                     ],
                   ),
                 ),

               ),
             ],
           ),
        ],
      ),
    );
  }
}
