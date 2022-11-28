import 'package:flutter/material.dart';
import 'package:phone_call_translator/pages/constant.dart';


class SecondPage extends StatefulWidget {
  static const RouteName = "/secondPage";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  static const List<String> list = ['English','Hindi','Telgu','Spanish','France'];
  String text1 = list.first;
  String text2 = list[1];
  String ?temp;
  String ?Num;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(onPressed: () {
              Navigator.of(context).pushNamed('/TabBar');
            }, icon: Icon(Icons.home,size: 30,),),
          )
        ],
      ),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,boxShadow: [new BoxShadow(
                        color: Colors.black,
                        blurRadius: 1.0,
                        blurStyle: BlurStyle.normal
                    ),]),width: 150,height: 40,
                      child: Center(
                        child: DropdownButton(
                          underline: SizedBox(),
                          iconEnabledColor: Colors.black,
                          // dropdownColor: Colors.black,
                          elevation: 0,
                          style: TextStyle(fontSize: 20,color: Colors.black),
                          value: text1
                          ,items: list.map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem(
                              value: value
                              ,child: Text(value,));
                        }).toList(), onChanged: (value) {
                          setState(() {
                            if(value==text2)
                              {
                                text2=text1;
                                text1=value!;
                              }
                            text1=value!;
                          });
                        },),
                      ),),
                    IconButton(onPressed: () {
                      setState(() {
                        temp=text1;
                        text1=text2;
                        text2=temp!;
                      });
                      }, icon: Image(image: AssetImage("lib/image/arrow.png"),height: 40,)),
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,boxShadow: [new BoxShadow(
                        color: Colors.black,
                        blurRadius: 1.0,
                        blurStyle: BlurStyle.normal
                    ),]),width: 150,height: 40,
                    child: Center(
                      child: DropdownButton(
                        underline: SizedBox(),
                        iconEnabledColor: Colors.black,
                        // dropdownColor: Colors.black,
                        elevation: 0,
                        style: TextStyle(fontSize: 20,color: Colors.black),
                      value: text2
                      ,items: list.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                        value: value
                        ,child: Text(value,));
                      }).toList(), onChanged: (value) {
                        setState(() {
                          if(value==text1)
                          {
                            text1=text2;
                            text2=value!;
                          }
                          text2=value!;
                        });
                      },),
                    ),
                    ),

                  ],),
              ),
              DialPad()

            ],
          ),
      ),
    );
  }
}

