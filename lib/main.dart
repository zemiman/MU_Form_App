 import 'package:flutter/material.dart';
import 'package:mu_app/muAppPages/circular_image.dart';
import 'package:mu_app/muAppPages/feed_page.dart';
import 'package:mu_app/muAppPages/feedback_page.dart';
import 'package:mu_app/muAppPages/followers_pages.dart';
import 'package:mu_app/muAppPages/group_chat.dart';
import 'package:mu_app/muAppPages/home_page.dart';
import 'package:mu_app/muAppPages/posting_page.dart';
import 'package:mu_app/muAppPages/second_signup.dart';
import 'package:mu_app/muAppPages/login_page.dart';
import 'package:mu_app/muAppPages/signUp_page.dart';
 void main(){
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "MU APP",
     theme: ThemeData(
       primaryIconTheme: IconThemeData(color: Colors.blueAccent)
     ),
     home: MyHomePage(),
   ));
 }

 
 