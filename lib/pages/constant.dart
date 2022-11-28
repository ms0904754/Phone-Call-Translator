import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DialPad extends StatefulWidget {
  static const RouteName = "/DialPad";
  @override
  _DialPadState createState() => _DialPadState();
}

class _DialPadState extends State<DialPad> {
  String display = '';
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.sp,
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      display,
                      textScaleFactor: 1.0,
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Container(
                    width: 80,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        InkWell(
                          onTap: () {
                            if (display.length != 0) {
                              setState(() {
                                display = display.substring(0, display.length - 1);
                              });
                            }
                          },
                          child: Icon(
                            Icons.backspace,
                            size: 35,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    dialPadButton(size, '1'),
                    dialPadButton(size, '2'),
                    dialPadButton(size, '3')
                  ],
                ),
                Row(
                  children: [
                    dialPadButton(size, '4'),
                    dialPadButton(size, '5'),
                    dialPadButton(size, '6')
                  ],
                ),
                Row(
                  children: [
                    dialPadButton(size, '7'),
                    dialPadButton(size, '8'),
                    dialPadButton(size, '9')
                  ],
                ),
                Row(
                  children: [
                    dialPadButton(size, '*', color: color),
                    dialPadButton(size, '0'),
                    dialPadButton(size, '#', color: color)
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      splashColor: Colors.green,
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width*0.65,
                        color: Colors.white,
                        child: Center(
                          child: Icon(
                            Icons.call,
                            color: Colors.green,
                            size: 40,
                          ),
                        ),
                      ),
                      onTap: () async{
                        FlutterPhoneDirectCaller.callNumber(display);
                      },
                    ),
                    const Divider(thickness: 1,color: Colors.grey,),
                    InkWell(
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width*0.35,
                        color: Colors.white,
                        child: Center(
                          child: Icon(
                            Icons.perm_contact_cal_rounded,
                            color: Colors.orangeAccent,
                            size: 40,
                          ),
                        ),
                      ),
                      onTap: () async{

                      },
                    ),

                  ],
                ),
              ],

    );
  }

  Widget dialPadButton(Size size, String value, {Color ?color}) {
    return InkWell(
      highlightColor: Colors.black45,
      onTap: () {
        setState(() {
          display = display + value;
        });
      },
      child: Container(
        height: size.height * 0.10,
        width: size.width * 0.33,
        decoration:
        BoxDecoration(border: Border.all(color: Colors.grey, width: 0.025)),
        child: Center(
          child: Text(
            value,
            textScaleFactor: 1.0,
            style: TextStyle(
                color: color ?? Colors.blue,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}