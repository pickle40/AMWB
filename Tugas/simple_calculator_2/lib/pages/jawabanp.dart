import 'package:flutter/material.dart';

class halamanJawaban extends StatefulWidget {
  final String result;

  const halamanJawaban({Key? key, required this.result}) : super(key: key);

  @override
  State<halamanJawaban> createState() => _halamanJawabanState();
}

class _halamanJawabanState extends State<halamanJawaban> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jawaban"),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                child: Text("Hasil Jawaban:",
                    style: TextStyle(fontSize: 24, color: Colors.black))),
            Container(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Text(widget.result,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            ElevatedButton(
                onPressed: Navigator.of(context).pop, child: Text("Back"))
          ]),
        ),
      ),
    );
  }
}
