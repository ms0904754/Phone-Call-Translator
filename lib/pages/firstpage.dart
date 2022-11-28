import 'package:flutter/material.dart';
import 'package:phone_call_translator/pages/TabBar_page.dart';
import 'package:phone_call_translator/pages/second_page.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}



class _firstpageState extends State<firstpage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/image/img.webp"),fit: BoxFit.cover)
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 18),

                  child:TextField(decoration: InputDecoration(constraints: BoxConstraints(maxHeight: 40,maxWidth: 300),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("search"),
                          SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                          Icon(Icons.search_outlined),
                          SizedBox(width: 4,),
                          IconButton(onPressed: () {
                            print("run");
                          }, icon: Icon(Icons.mic,color: Colors.black,)
                          ),
                        ],),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                      ),
                      fillColor: Colors.white,
                      filled: true
                  ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings,size: 32,color: Colors.grey,))

              ],
            ),
            // Container(child: Tab_bar(),alignment: Alignment.bottomRight,)
          ],
    );
  }
}
