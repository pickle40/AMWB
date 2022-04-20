import 'package:calculator_sederhana_flutter/angka.dart';
import 'package:calculator_sederhana_flutter/operator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator Sederhana",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator Sederhana"),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: TextField(
                    autofocus: true,
                    onChanged: (text) {
                      print(text);
                    },
                  ),
                ),
                Container(
                    child: Text(
                  "Operator",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )),
                Container(
                  height: 150,
                  child: ListView.builder(
                      itemCount: Operator.sOperator.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ElevatedButton(
                            onPressed: () {},
                            child: Text(Operator.sOperator[index].operator));
                      }),
                ),
                Container(
                    child: Text(
                  "Angka",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )),
                Container(
                  height: 250,
                  child: ListView.builder(
                      itemCount: Angka.sAngka.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ElevatedButton(
                            onPressed: () {},
                            child: Text(Angka.sAngka[index].angka));
                      }),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Hitung"),
                    
                  ),
                )
              ],
            )),
      ),
    );
  }
}
