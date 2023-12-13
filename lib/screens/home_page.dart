import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // // Get the screen height using MediaQuery
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    // var textScaler = MediaQuery.of(context).textScaleFactor;


    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Screen Height'),
      ),
      body: Center(
        child: Icon(Icons.remove, size: 50, color: Colors.red,)
      ),
    );
  }
}