import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          title:const Center( child:Text('Book List',style: TextStyle(color:Colors.black),)),
        backgroundColor: Colors.deepOrange[900],
        ),
      ),
    );
  }
}