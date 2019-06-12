import 'package:flutter/material.dart';
import 'package:mu_app/muAppPages/signUp_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>_LoginState();
  
} //end of loginPage class:

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("MU APP"),
      // ),
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 45.0),
              child: Center(
                child: Text("Sign In",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30.0,
                         )),
              )),
          Container(
            margin: EdgeInsets.only(left: 60.0, right: 60.0, top: 70.0, bottom: 40.0),
            //width: 150.0,
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Enter your email',
                        contentPadding: EdgeInsets.symmetric(vertical: 3.0),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            padding: EdgeInsets.only(bottom: -16.0),
                            onPressed: () {
                              debugPrint("its me!");
                            },
                          ),
                          labelStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 33.0),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Text("Log In",
                          textAlign: TextAlign.end,
                          textScaleFactor: 1.1,
                          ),
                        ],
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.blue)
                          ),
                      
                    ),
                  ),
                  InkWell(
                    child: Text("Forget Password?",
                    textAlign: TextAlign.end,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 18.0,
                    ),
                    ),
                    onTap: (){

                    },
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 60.0, right: 60.0, top: 32.0, bottom: 30.0),
            child: Column(
              children: <Widget>[
                 RaisedButton(
                  color: Colors.blueGrey,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.3,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)), 
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return FirstSignUpPage();

                    }));
                  },
                ),
                
                
                RaisedButton(
                  color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      Text(
                        'Sign in with Twitter',
                        textScaleFactor: 1.2,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)), 
                  onPressed: () {},
                ),
                RaisedButton(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        'Sign in with Google',
                        textScaleFactor: 1.2,
                        //style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)), onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
