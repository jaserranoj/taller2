import 'dart:math';

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
  String operaciones="";
  int operador1=0;
  int operador2=0;
  int count=0;

  String resultadoOperaciones="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 200,
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
                              operaciones += " / ";});
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
                              operaciones += " * ";
                              count++;
                              });
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
                              operaciones += " - ";});
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
                              //  String t =  _operacion.toString();
                              //  print(t);
                                _operacion();
                                operaciones = resultadoOperaciones;

                              });
                            },
                            child: Text(
                                "="
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              operaciones+=" + ";
                              setState(() {});
                            },
                            child: Text(
                                "+"
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
                                //  String t =  _operacion.toString();
                                //  print(t);
                                _raiz();
                                operaciones = resultadoOperaciones;

                              });
                            },
                            child: Text(
                                "sqrt()"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){
                              setState((){
                                //  String t =  _operacion.toString();
                                //  print(t);
                                _cruadado();
                                operaciones = resultadoOperaciones;

                              });
                            },
                            child: Text(
                                "^2"
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){

                            },
                            child: Text(
                                " % "
                            )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: (){

                            },
                            child: Text(
                                "  "
                            )
                        )
                      ],
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

  void _operacion() {
    var arreglo =operaciones.split(" ");
    print(arreglo.length);
    if (arreglo.length == 3) {
      if (!int.parse(arreglo[0]).isNaN) {
        print(int.parse(arreglo[0]));
      } else {
        resultadoOperaciones = "Error.";
        operaciones = "0";
        return;
      }
      if (arreglo[1].isNotEmpty) {
        print(arreglo[1]);
      } else {
        resultadoOperaciones = "Error.";
        operaciones = "0";
        return;
      }
      if (!int.parse(arreglo[2]).isNaN) {
        print(int.parse(arreglo[2]));
      } else {
        resultadoOperaciones = "Error.";
        operaciones = "0";
        return;
      }

      if(arreglo[1].trim() == "-") {
        setState(() {
          var resultado = int.parse(arreglo[0]) - int.parse(arreglo[2]);
          resultadoOperaciones = "$resultado";
        });
      }

      if(arreglo[1].trim() == "+") {
        setState(() {
          var resultado = int.parse(arreglo[0]) + int.parse(arreglo[2]);
          resultadoOperaciones = "$resultado";
        });
      }

      if(arreglo[1].trim() == "/") {
        setState(() {
          if(int.parse(arreglo[2].trim()) > 1) {
            var resultado = int.parse(arreglo[0]) / int.parse(arreglo[2]);
            resultadoOperaciones = "$resultado";
          }else{
            resultadoOperaciones="Error.";
            operaciones = "0";
            return;
          }
        });
      }

      if(arreglo[1].trim() == "*") {
        setState(() {
          var resultado = int.parse(arreglo[0]) * int.parse(arreglo[2]);
          resultadoOperaciones = "$resultado";
        });
      }
    }else{
      resultadoOperaciones="Error.";
      operaciones = "0";
      return;
    }


  }


  void _raiz() {
    var arreglo =operaciones.split(" ");

    if (arreglo.length == 1) {
      if (!int
          .parse(arreglo[0])
          .isNaN) {
        print(int.parse(arreglo[0]));
        var resultado = sqrt(int.parse(arreglo[0]));
        resultadoOperaciones = "$resultado";
      } else {
        resultadoOperaciones = "Error.";
        operaciones = "0";
        return;
      }
    }



  }

  void _cruadado() {

    var resultado = pow(4,2);
    resultadoOperaciones = "$resultado";


  }

}