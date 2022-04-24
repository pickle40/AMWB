import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator_2/pages/jawabanp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var inputuser = '';
  var jawaban = '';

  final List<String> btns = [
    '+',
    '-',
    '*',
    '/',
    '^',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '='
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Kalkulator Sederhana",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Kalkulator Sederhana"),
          ),
          body: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(inputuser,
                        style: TextStyle(fontSize: 24, color: Colors.black)),
                  ),
                  Container(
                    height: 400,
                    child: GridView.builder(
                      itemCount: btns.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        //untuk tombol operator
                        if (isOperator(btns[index]) == true) {
                          return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent),
                              onPressed: () {
                                setState(() {
                                  inputuser += btns[index];
                                });
                              },
                              child: Text(btns[index],
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)));
                        }
                        //untuk tombol hasil
                        else if (index == btns.length - 1) {
                          return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange),
                              onPressed: () {
                                result();
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return halamanJawaban(result: jawaban);
                                }));
                              },
                              child: Text(btns[index],
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)));
                        } else {
                          return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                              onPressed: () {
                                setState(() {
                                  inputuser += btns[index];
                                });
                              },
                              child: Text(btns[index],
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)));
                        }
                      },
                    ),
                  ),
                ],
              )),
        ));
  }

  bool isOperator(String x) {
    if (x == '/' || x == '*' || x == '+' || x == '-' || x == '^') {
      return true;
    }
    return false;
  }

  void result() {
    String finaluserinput = inputuser;

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    jawaban = eval.toString();
  }
}
