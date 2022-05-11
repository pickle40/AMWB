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
      title: "Coba Widget",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Coba Widget"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 100,
              ),  
            ),
            Container(
              color: Colors.green,
              height: 100,
            ),
            Container(
              height: 50,
              child: Row(
                children: [
                  Container(
                    color: Colors.blue.shade200,
                    width: 50,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber.shade200,
                      width: 50,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green.shade200,
                      width: 50,
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
