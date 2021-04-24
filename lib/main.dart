import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Calculadora();
  }
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String operaciones="0";
  int suma=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 300,
              height: 100,
              child: FittedBox(
                alignment: AlignmentDirectional.centerEnd,
                fit: BoxFit.fitHeight,
                child: Text(
                    operaciones
                ),
              ),
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "7";});
                            },
                            child: Text(
                                "7"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "8";});
                            },
                            child: Text(
                                "8"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "9";});
                            },
                            child: Text(
                                "9"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "/";});
                            },
                            child: Text(
                                "÷"
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Flexible(child: SizedBox(height: 10,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "4";});
                            },
                            child: Text(
                                "4"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "5";});
                            },
                            child: Text(
                                "5"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "6";});
                            },
                            child: Text(
                                "6"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "*";});
                            },
                            child: Text(
                                "*"
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "1";});
                            },
                            child: Text(
                                "1"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "2";});
                            },
                            child: Text(
                                "2"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "3";});
                            },
                            child: Text(
                                "3"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "-";});
                            },
                            child: Text(
                                "-"
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                                operaciones += "0";});
                            },
                            child: Text(
                                "0"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones = "0";});
                            },
                            child: Text(
                                "C"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                              operaciones += "+";});
                            },
                            child: Text(
                                "+"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              operaciones+=".";
                              setState(() {});
                            },
                            child: Text(
                                "."
                            )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}