import 'package:flutter/material.dart';
import 'package:mu_app/muAppPages/group_chat.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

 class FeedPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_FeedPageState();
  }
class _FeedPageState extends State<FeedPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Mekelle University", 
        style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blueAccent)),
        backgroundColor: Colors.white,
        elevation: 1.0,  
      ),
      drawer: Drawer(
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
                                        ),
                                        ),
                                        onTap: (){
                                          //Edit profile on tapped function:

                                        },
                                      )
                             //Text("Edit\nProfile", style:TextStyle(color: Colors.blueAccent,))
                          ],

                        ),
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(50.04)),
                          // //shape: CircleBorder(),
                           elevation: 8.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.black,
                            radius: 40.0,
                            //child: Text(nameInitial,style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
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
                            ),
                          ),
                        )
                      ],
                    ),),),
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
              //Divider(height: 2.0, color: Colors.blueGrey,),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade400)))),
              SizedBox(
                height: 45.0,
              ),
              _CustomListTile(Icons.lock, "SignOut", () {}),
          ],
        ),),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, position){
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.account_circle, color:Colors.grey, size:60.0),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child:RichText(
                                      text: TextSpan(children:
                                      [
                                        TextSpan(text:"Zemi Gebre", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.black),),
                                        //TextSpan(text:"Hey!",style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                                        TextSpan(text:" \n4 hrs ago!",style: TextStyle(fontSize: 16.0, color: Colors.grey))
                                      ] 
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    )),flex: 5,                               
                                ),
                                Expanded(
                                  child: Padding(
                                     padding: const EdgeInsets.only(right: 4.0),
                                     child: Icon(Icons.expand_more, color: Colors.grey,),
                                   ),flex: 1,
                                 ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text("Am doing on this with ma partner berhe using flutter!", style: TextStyle(fontSize: 18.0),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0, right: 4.0, bottom: 6.0, left: 4.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Icon(FontAwesomeIcons.heart, color: Colors.grey,),
                                 Icon(FontAwesomeIcons.comment, color: Colors.grey,),
                                 Icon(FontAwesomeIcons.retweet, color: Colors.grey,),
                                 Icon(FontAwesomeIcons.shareAlt, color: Colors.grey,),
                               ],
                             ),
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //   },
      //   child: Icon(Icons.add),
      // ),
        
         // currentIndex:selectedPageIndex,
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
          ),
        ),
      ),
    );
  }
}