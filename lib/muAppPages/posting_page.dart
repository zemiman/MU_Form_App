import 'package:flutter/material.dart';
class PostEvent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>_PostEventState();
}
class _PostEventState extends State<PostEvent> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Mekelle University", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blueAccent)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        
      ),
      drawer: Drawer(
        child: Container(
          margin: EdgeInsets.only(top: 40.0),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: <Color>[Colors.white10, Colors.white])),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                             Container(
                               width: 180.0,
                             ),
                             Icon(Icons.edit, color: Colors.grey),
                             InkWell(
                                        child: Text("Edit\nProfile",
                                        textAlign: TextAlign.end,
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(color: Colors.blueAccent,
                                        fontSize: 12.0,
                                        ), ),
                                        onTap: (){
                                          //for while this is edit profile on tapped function 

                                        },
                                      )
                          ],

                        ),
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(50.04)),
                           elevation: 8.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.black,
                            radius: 40.0,
                            backgroundImage: AssetImage("images/myphoto.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text("100 Followers", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                                ),
                                Expanded(
                                  child: Text("125 Following", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                                )
                                
                              ],
                            ),),)
                      ],
                    ),
                  )),
              SizedBox(
                height: 30.0,
              ),
              _CustomListTile(Icons.mode_comment, "Chat", () {}),
              _CustomListTile(Icons.send, "Official Anouncement", () {}),
              //Divider(height: 2.0, color: Colors.blueGrey,),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade400)))),
              _CustomListTile(Icons.settings, "Settings", () {}),
              _CustomListTile(Icons.help, "Help", () {}),
              _CustomListTile(Icons.feedback, "FeedBack", () {}),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade400)))),
              SizedBox(
                height: 45.0,
              ),
              _CustomListTile(Icons.lock, "SignOut", () {}),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[   
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0, bottom: 40.0),
            child: Form(
              child: Column(
                children: <Widget>[       
                  Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: TextField(
                            maxLines: 12,
                            //minLines: 10,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Hello...',

                            ),),),                        
                      ],
                    ),),
                ],
              ),),)
        ],
      ),
    );
  }

  Widget _CustomListTile(IconData icon, String text, Function onTap) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: InkWell(
        splashColor: Colors.cyanAccent,
        onTap: onTap,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.blueGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(text,
                        style: TextStyle(fontSize: 16.0)),
                  )
                ],
              ),
            ],
          ),),),);
  }
}
