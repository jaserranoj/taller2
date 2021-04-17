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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
 }


class _HomePageState extends State<HomePage> {
  int _counter=0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Center(
        child: Text("Valor $_counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:_botonFlotante,
        child: Icon(Icons.access_alarms),
      ),

    );
  }
  _botonFlotante() {
    setState((){
      _counter++;

    });
}

}