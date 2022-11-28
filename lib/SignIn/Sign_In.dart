import 'package:flutter/material.dart';

class SignIn_page extends StatelessWidget {
  static const RouteName= "/SignIn";
  const SignIn_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: [
            Text("WelCome Back!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("Please Enter Your Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            SizedBox(height: 30,),
            Form(child: Column(children: [
              TextFormField(decoration: InputDecoration(hintText: "Email or Phone number",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),)
            ],))
          ],),
      ),
    );
  }
}
