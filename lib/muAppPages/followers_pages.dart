import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class FollowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FollowPageState();
  }
}

class _FollowPageState extends State<FollowPage> {
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
                child: Text("20 Followers",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text("20 Following",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  _FollowersList("Zemi Gere", "last seen mon 2:30pm", "", "Remove"),
                  _FollowersList("Berhe Gebre", "last seen mon 6:28am", "", "Remove"),
                  _FollowersList("Zemi Man", "last seen 10:20pm", "images/myphoto.png", "Remove"),
                ],
              ),
            ),
            //Icon(Icons.people_outline)
            Padding(
              padding: EdgeInsets.all(0.0),
              child: ListView(
                children: <Widget>[
                   _FollowersList("Zemi Gere", "last seen mon 2:30pm", "", "Unfollow"),
                  _FollowersList("Berhe Gebre", "last seen mon 6:28am", "", "Unfollow"),
                  _FollowersList("Zemi Man", "last seen 10:20pm", "images/myphoto.png", "Unfollow"),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 40.0,
          child: BottomNavigationBar(
          currentIndex: 0,
          elevation: 14.0,
          selectedItemColor: Colors.blueAccent,
          

          items: [BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Icon(Icons.home, color: Colors.grey,),
            ),
            //title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble, color: Colors.grey,),
            //title: Text("call")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.grey,),
             
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey),
             
          ),
          ],
        ),
        )
        ////////////////
      ),
    );
  }

  Widget _FollowersList(String name, String subtitle, String image, String trailingValue) {
    RandomColor _randomColor = RandomColor();
    Color _color =
        _randomColor.randomColor(colorBrightness: ColorBrightness.light);
    var nameInitial = name[0].toUpperCase();
    if (image.length > 0) {
      nameInitial = "";
    }
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: _color,
            foregroundColor: Colors.black,
            radius: 37.0,
            child: Text(nameInitial,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            backgroundImage: AssetImage(image),
          ),
          title: Text(name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          subtitle: Text(subtitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
          trailing: InkWell(
            child: Text(
              trailingValue,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.redAccent
              ),
              ),
              onTap: (){
                //Remove followeters:
              },
          ),
        ),
      ),
    );
  }
}
