import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.red,
                image: DecorationImage(image: AssetImage("lib/image/login.png"),fit: BoxFit.fitWidth)
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 150,horizontal: 20),
            child: Container(alignment: Alignment.bottomCenter,child: ElevatedButton(onPressed: () =>
                Navigator.of(context).pushNamed('/SignIn')
                ,style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(300,0)),shadowColor: MaterialStateProperty.all(Colors.white70),elevation: MaterialStateProperty.all(2),backgroundColor: MaterialStateProperty.all(Colors.white),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))), child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sign In",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                )),
            ),),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 90,horizontal: 20),
            child: Container(alignment: Alignment.bottomCenter,child: ElevatedButton(onPressed: () {
            },style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(300, 0)),shadowColor: MaterialStateProperty.all(Colors.white70),elevation: MaterialStateProperty.all(2),backgroundColor: MaterialStateProperty.all(Colors.white),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))), child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
            )),
            ),),
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 100),
          //   child: Container(alignment: Alignment.bottomCenter,child: ElevatedButton(onPressed: () {}, child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Text("SignUp",style: TextStyle(fontSize: 30),),
          //   )),),
          // ),

        ],
      ),
    );
  }
}
