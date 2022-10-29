import 'package:flutter/material.dart';
import 'package:shopping/components/custom_elevatedbutton.dart';
import 'package:shopping/components/custom_textfield.dart';
import 'package:shopping/signup_page.dart';

import 'home_page.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      body:ListView(
        children: [
          Column(

            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 30),
                  child: Container(
                    width: 350,
                    height: 500,
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
                              child: Text("Welcome,",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 60),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                                },
                                child: Text("Sign",style: TextStyle(
                                  color: Color(0xFF02C568),
                                  fontSize: 18
                                ),),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("sign in to continue", style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 16
                          ),),
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
                          padding: const EdgeInsets.only(top: 20, left: 200),
                          child: Text("Forget Password?", style: TextStyle(fontSize: 13, color: Colors.grey[700]),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 22),
                          child:CustomElevatedButton(nextFunc: HomePage(), text: 'SIGN IN',),

                        )
                      ],
                    ),
                  ),
                  
                ),
                Text("-OR-",style: TextStyle(fontSize: 16),),
                SizedBox(
                  height: 10,
                ),
              Container(
                width: 340,
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Icon(Icons.facebook,size: 40,color: Color(0xFF49588D)),
                    ),
                    Text("Sign in with Facebook", style: TextStyle(color: Colors.grey[500]),)

                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border(
                    left: BorderSide(width: 2,color: Colors.grey),
                      bottom: BorderSide(width: 2,color: Colors.grey),
                      top: BorderSide(width: 2,color: Colors.grey),
                      right: BorderSide(width: 2,color: Colors.grey)
                  )
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 340,
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Icon(Icons.gpp_good_sharp,size: 40,color: Color(0xFF02C568)),
                    ),
                    Text("Sign in with Google", style: TextStyle(color: Colors.grey[500]),)

                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border(
                        left: BorderSide(width: 2,color: Colors.grey),
                        bottom: BorderSide(width: 2,color: Colors.grey),
                        top: BorderSide(width: 2,color: Colors.grey),
                        right: BorderSide(width: 2,color: Colors.grey)
                    )
                ),
              )
              ],
          ),
        ],
      ),
    );
  }
}
