//Import flutter helper library

import 'package:flutter/material.dart';

//Create a class that will be our custom widget
//this class must extend the 'StatelessWidget' base class
class App extends StatelessWidget {
//Must define a 'build' method that returns the widgets that *this* widget will show
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        home: Scaffold(
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.casino),
        onPressed: () {
          print('Hi there!!');
          },
        ),
        appBar: AppBar(
          title: Text('Lets use some images!'),
        ),
      ),
    );
  }  
}


