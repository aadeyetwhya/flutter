import 'package:assignment1/data.dart';
import 'package:flutter/material.dart';
import 'package:assignment1/CardPage.dart';

import 'package:assignment1/ClickPage.dart';

void main(){

  runApp(MaterialApp(

      home:Home()));
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          backgroundColor:Colors.white70,appBar:_appBar(),body:CardPage()),
    );
  }
}

Widget _appBar(){
  return AppBar(brightness: Brightness.light,elevation: 5.0,backgroundColor: Colors.blue.shade900,title:Center(child:
  Text("Social Media Page",style:TextStyle(letterSpacing: 4.0))));
}



