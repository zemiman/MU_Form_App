import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondSignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondSignUp();
  }
}

class _SecondSignUp extends State<SecondSignUpPage> {
  var _college = ['college','MIT', 'others'];
  var _selectedCollege = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedCollege = _college[0];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0),
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
                  FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelStyle:TextStyle(fontSize: 20.0),
                          //contentPadding: EdgeInsets.only(bottom: 4.0),
                          errorStyle: TextStyle(
                              color: Colors.redAccent, fontSize: 14.0),
                          hintText: 'Please select college',                      
                        ),
                        isEmpty: _selectedCollege == '',
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _selectedCollege,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                _selectedCollege = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _college.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelStyle:TextStyle(fontSize: 20.0),
                          //contentPadding: EdgeInsets.only(bottom: 4.0),
                          errorStyle: TextStyle(
                              color: Colors.redAccent, fontSize: 14.0),
                          hintText: 'Please select college',                      
                        ),
                        isEmpty: _selectedCollege == '',
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _selectedCollege,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                _selectedCollege = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _college.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelStyle:TextStyle(fontSize: 20.0),
                          //contentPadding: EdgeInsets.only(bottom: 4.0),
                          errorStyle: TextStyle(
                              color: Colors.redAccent, fontSize: 14.0),
                          hintText: 'Please select college',                      
                        ),
                        isEmpty: _selectedCollege == '',
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _selectedCollege,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                _selectedCollege = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _college.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelStyle:TextStyle(fontSize: 20.0),
                          //contentPadding: EdgeInsets.only(bottom: 4.0),
                          errorStyle: TextStyle(
                              color: Colors.redAccent, fontSize: 14.0),
                          hintText: 'Please select college',                      
                        ),
                        isEmpty: _selectedCollege == '',
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _selectedCollege,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                _selectedCollege = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _college.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child:TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Confirm password',
                        hintText: 'Enter your password again',
                        contentPadding: EdgeInsets.symmetric(vertical: 3.0),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ), 
                  ),
                   Padding(
                    padding: EdgeInsets.only(top: 33.0),
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Sign Up",
                            textAlign: TextAlign.end,
                            textScaleFactor: 1.1,
                          ),
                        ],
                      ),
                      onPressed: () {},
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
