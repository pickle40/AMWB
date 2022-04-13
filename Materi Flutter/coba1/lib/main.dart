import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Pertama Saya",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Aplikasiku"),
          ),
          body: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.add_ic_call, color: Colors.blue),
                      Text(
                        "CALL",
                        style: TextStyle(color: Colors.blue),
                      )
                    ])
              ],
            ),
          )),
    );
  }
}
