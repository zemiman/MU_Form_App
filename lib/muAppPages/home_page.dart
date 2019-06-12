import 'package:flutter/material.dart';
import 'package:mu_app/muAppPages/feed_page.dart';
import 'package:mu_app/muAppPages/group_chat.dart';
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  var selectedPageIndex=0;
  var pages=[FeedPage(),GroupChat(),FeedPage(),GroupChat()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: pages[selectedPageIndex],
      bottomNavigationBar: SizedBox(
            height: 40.0,
            child: BottomNavigationBar(
              //currentIndex: 0,
              elevation: 14.0,
              selectedItemColor: Colors.blueAccent,
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Icon(
                      Icons.home,
                      color:selectedPageIndex==0? Colors.blueAccent : Colors.grey,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_bubble,
                    color:selectedPageIndex==0? Colors.blueAccent : Colors.grey,
                  ),
                  //title: Text("call")
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                    color:selectedPageIndex==0? Colors.blueAccent : Colors.grey,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search,
                  color:selectedPageIndex==0? Colors.blueAccent : Colors.grey,
                  ),   
                ),
                
              ],
              onTap: (index){
                setState(() {
                 selectedPageIndex=index; 
                });
              }, currentIndex: selectedPageIndex, ),
          )
    );
  }
  
}