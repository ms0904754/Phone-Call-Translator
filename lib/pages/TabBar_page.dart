import 'package:flutter/material.dart';
import 'package:phone_call_translator/pages/firstpage.dart';
import 'package:phone_call_translator/pages/second_page.dart';

class Tab_bar extends StatefulWidget {
  static const RouteName = '/TabBar';
  const Tab_bar({Key? key}) : super(key: key);

  @override
  State<Tab_bar> createState() => _Tab_barState();
}

class _Tab_barState extends State<Tab_bar> {
  List<Map<String,Object>>? screenchoosen = [
    {'page': firstpage()},
    {'page': firstpage()},
    {'page': firstpage()},
  ];
  int tabindex=0;
  @override
  void initState() {
    List<Map<String,Object>>screenchoosen = [];
    super.initState();
  }

  void _selecttap(index)
  {
    setState(() {
      print(index);
      tabindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(screenchoosen![tabindex]['page']);
    return
      Scaffold(
          body: screenchoosen?[tabindex]['page'] as Widget,
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home,size: 40,color: Colors.red,),label: "Home",),
              BottomNavigationBarItem(icon: Image(image: AssetImage("lib/image/conversation.png"),height: 40,),label: "Conversation"),
              BottomNavigationBarItem(icon: Image(image: AssetImage("lib/image/chat.png"),height: 40,),label: "chat"),
            ],
            unselectedLabelStyle: TextStyle(fontSize: 15),
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            selectedFontSize: 18,

            onTap: _selecttap,
            currentIndex: tabindex,
          //
          // ),
    ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.of(context).pushNamed("/secondPage");
        },child: Icon(Icons.dialpad,color: Colors.white,),backgroundColor: Colors.red,),
      );
  }
}
