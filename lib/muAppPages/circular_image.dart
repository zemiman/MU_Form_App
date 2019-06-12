import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class AvaterWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AvaterWidgetState();
  }

} 
class _AvaterWidgetState extends State<AvaterWidget>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){

        }),
        title: Text("chat list"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){

          })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Divider(height: 4.0, color: Colors.blueAccent,),
            _ContactList("Zemi Gere", ""),
            Divider(height: 4.0, color: Colors.blueAccent,),
            _ContactList("Berhe Gebre", ""),
             Divider(height: 4.0, color: Colors.blueAccent,),
            _ContactList("Zemi Man", "images/myphoto.png"),
            Divider(height: 4.0, color: Colors.blueAccent,)
            
          ],
        ),
      ),
    );
  }
  Widget _ContactList(String name, String image){
    RandomColor _randomColor=RandomColor();
    Color _color =_randomColor.randomColor(
      colorBrightness: ColorBrightness.light
    );
    var nameInitial=name[0].toUpperCase();
    if(image.length>0){
      nameInitial="";
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _color,
          foregroundColor: Colors.black,
          backgroundImage: NetworkImage(image),
          radius: 35.0,
          child: Text(nameInitial,style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
        ),
        title: Text(name, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
        subtitle: Text("it is me, $name", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
        trailing: Icon(Icons.call),
      ),
    );

  }

}

//Tab layout code for Group chat
//  appBar: PreferredSize( 
        //   preferredSize: Size.fromHeight(kToolbarHeight), 
        //   child: Container( 
        //     margin: EdgeInsets.only(top: 55.0, left: 20.0),
        //     padding: EdgeInsets.only(bottom: 4.0),
        //     alignment: Alignment.center,
        //     height: 90.0, 
        //     child: TabBar(
        //       indicatorColor: Colors.blue,
        //       labelStyle: TextStyle(color: Colors.indigo),
        //       unselectedLabelColor: Colors.grey,
            
        //        indicator: UnderlineTabIndicator( 
        //   borderSide: BorderSide(width: 2.0), 
        //   insets: EdgeInsets.symmetric(horizontal:6.0) 
          
        // ), 
        //       //indicatorSize: TabBarIndicatorSize.label,
        //       // indicatorPadding: EdgeInsets.only(top: 25.0), 
        //       tabs: [ 
        //         Tab(icon: Icon(
        //           Icons.person, 
        //           //color: Colors.deepPurpleAccent,
                  
        //           )),
        //         Tab(icon: Icon(Icons.people, 
        //         //color: Colors.indigo,
        //         )),
                
        //       ], 
        //     ), 
        //   ), 
        // ), 