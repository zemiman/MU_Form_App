import 'package:flutter/material.dart';
import 'package:mu_app/muAppPages/second_signup.dart';

class FirstSignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstSignUp();
  }
}

class _FirstSignUp extends State<FirstSignUpPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0),
            //padding: EdgeInsets.only(left: -330.0),
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                //Button Action:
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35.0),
            child: Center(
              child: Text("Sign Up",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30.0,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 60.0, right: 60.0, top: 60.0, bottom: 36.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "First Name",
                        hintText: "Enter your first name",
                        contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Last Name",
                        hintText: "Enter your last name",
                        contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "email",
                        hintText: "Enter your email",
                        contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          padding: EdgeInsets.only(bottom: -18.0),
                          onPressed: () {
                            //debugPrint("its me!");
                          },
                        ),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Confirm password',
                        hintText: 'Enter your password again',
                        contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          padding: EdgeInsets.only(bottom: -18.0),
                          onPressed: () {
                            //Button Action:
                          },
                        ),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 33.0),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Next",
                            textAlign: TextAlign.end,
                            textScaleFactor: 1.1,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SecondSignUpPage();
                        }));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.blue)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 55.0, right: 55.0, top: 25.0, bottom: 25.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: Text(
                      "Terms & conditions",
                      textAlign: TextAlign.end,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Text(
                      "FAQ",
                      textAlign: TextAlign.end,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Text(
                      "Help?",
                      textAlign: TextAlign.end,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
