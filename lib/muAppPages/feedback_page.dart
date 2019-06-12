import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FeedBack extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FeedBackState();
  }

}
class _FeedBackState extends State<FeedBack>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0),
           // padding: EdgeInsets.only(left: -330.0),
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                //Button Action:
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text("Feedback",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 35.0,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0, bottom: 40.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(bottom: 8.0),
                    child: Text("Subject",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20.0,
                  )),
                    ),
                  
                  TextFormField(
                    style: TextStyle(backgroundColor: Colors.white
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(color: Colors.green)
                        
                      ),
                         
                        hintText: 'A short descriptive title for your feedback!',
                        contentPadding: EdgeInsets.all(8.0),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 28.0, bottom: 8.0),
                    alignment: Alignment.topLeft,
                    child: Text("Message",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20.0,
                  )),
                    ),
                  Card(
                    color: Colors.white,
                    elevation: 2.0,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TextField(
                        maxLines: 10,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Write your detail feedback here!',
                           

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      child: Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Text("submit",
                          //textScaleFactor: 1.1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                          ),
                          ),
                          )
                          
                        ],
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.blue)
                          ),
                      
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}