import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_color/random_color.dart';

class GroupChat extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>_GroupChatState();   
}
class _GroupChatState extends State<GroupChat> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            backgroundColor: Colors.white,
            bottom: TabBar(
              //indicatorColor: Colors.indigoAccent,
              unselectedLabelColor: Colors.grey,
              // indicator: UnderlineTabIndicator(
              //     borderSide: BorderSide(width: 3.0),
              //     insets: EdgeInsets.symmetric(horizontal: 8.0)),
              tabs: <Widget>[
                Tab(
                    icon: Icon(
                  Icons.person,
                  size: 40.0,
                  //color: Colors.deepPurpleAccent,
                )),
                Tab(
                    icon: Icon(
                  Icons.people,
                  size: 40.0,
                  //color: Colors.indigo,
                )),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: "Add one more chat",
            onPressed: () {},
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListView(
                  children: <Widget>[
                    _PrivateChat("Zemi Gere", ""),
                    _PrivateChat("Berhe Gebre", ""),
                    _PrivateChat("Zemi Man", "images/myphoto.png"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListView(
                  children: <Widget>[
                    _GroupChat("GC-2019", ""), 
                    _GroupChat("CSE Dep't", ""), 
                    _GroupChat("Miz's Families", "images/myphoto.png"),
                  ],
                ),
              ),
            ],
          ),
           ),
    );
  }

  Widget _PrivateChat(String name, String image) {
    RandomColor _randomColor = RandomColor();
    Color _color =
        _randomColor.randomColor(colorBrightness: ColorBrightness.light);
    var nameInitial = name[0].toUpperCase();
    if (image.length > 0) {
      nameInitial = "";
    }
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: _color,
            foregroundColor: Colors.black,
            radius: 35.0,
            child: Text(nameInitial,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            backgroundImage: AssetImage(image),
          ),
          title: Text(name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          subtitle: Text("it is me, $name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0)),
          trailing: Icon(Icons.call),
        ),
      )
      ,
    );
  }

  Widget _GroupChat(String name, String image) {
    RandomColor _randomColor = RandomColor();
    Color _color =
        _randomColor.randomColor(colorBrightness: ColorBrightness.light);
    var nameInitial = name[0].toUpperCase();
    if (image.length > 0) {
      nameInitial = "";
    }
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))

        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: _color,
            foregroundColor: Colors.black,
            radius: 35.0,
            child: Text(nameInitial,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            backgroundImage: AssetImage(image),
          ),
          title: Row(
            children: <Widget>[
              Icon(Icons.people_outline),
              Text(name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ],
          ),
          subtitle: Text("it is me, $name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0)),
          trailing: Icon(Icons.call),
        ),
      )
      ,
    );
  }
}
