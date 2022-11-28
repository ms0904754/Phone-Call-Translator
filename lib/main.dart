import 'package:flutter/material.dart';
import 'package:phone_call_translator/MyHome.dart';
import 'package:phone_call_translator/SignIn/Sign_In.dart';
import 'package:phone_call_translator/pages/TabBar_page.dart';
import 'package:phone_call_translator/pages/constant.dart';
import 'package:phone_call_translator/pages/second_page.dart';
import 'package:phone_call_translator/pages/speechtoText.dart';
import 'package:speech_to_text/speech_to_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/TabBar",
      routes: {
        '/SignIn': (context) => SignIn_page(),
        '/TabBar': (context) => Tab_bar(),
        "/secondPage": (context) => SecondPage(),
        '/DialPad': (context) => DialPad(),
        // '/speechtoText': (context) => SpeechtoText()
      },
      home: Myhome()
    );
  }
}

