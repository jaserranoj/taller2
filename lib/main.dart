import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(
    ) {
  runApp(MyAplicacion());
}

class MyAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jaserranoj',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Text("jaserranoj"),
    );
  }
}