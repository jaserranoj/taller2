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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black
                  )
              ),
              child: FittedBox(
                alignment: AlignmentDirectional.centerEnd,
                fit: BoxFit.fitHeight,
                child: Text(
                    operaciones
                ),
              ),
            ),
            SizedBox(height: 20,),
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
                            onPressed: (){},
                            child: Text(
                                "7"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "8"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "9"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
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
                            onPressed: (){},
                            child: Text(
                                "4"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "5"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "6"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "X"
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
                                "1"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "2"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "3"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
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
                            onPressed: (){},
                            child: Text(
                                "0"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "."
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "+"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              operaciones="0";
                              setState(() {});
                            },
                            child: Text(
                                "C"
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
                  height: 50,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: ElevatedButton(
                      child: Text('='),
                      onPressed: (){
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}