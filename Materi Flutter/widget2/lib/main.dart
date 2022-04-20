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
  final List bulan = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MEI",
    "JUN",
    "JUL",
    "AGT",
    "SEP",
    "OKT",
    "NOV",
    "DES"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Coba Widget",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Coba Widget"),
          ),
          body: Container(
            padding: EdgeInsets.all(8.0),
            // //List View Statis
            // child: ListView(
            //   children: [
            //     Container(
            //       child: Column(children: [Icon(Icons.add), Text("Add")]),
            //     ),
            //     Text("A", style: TextStyle(fontSize: 100)),
            //     Text("B", style: TextStyle(fontSize: 100)),
            //     Text("C", style: TextStyle(fontSize: 100)),
            //     Text("D", style: TextStyle(fontSize: 100)),
            //     Text("E", style: TextStyle(fontSize: 100)),
            //     Text("F", style: TextStyle(fontSize: 100)),
            //     Text("G", style: TextStyle(fontSize: 100)),
            //     Text("H", style: TextStyle(fontSize: 100))
            //   ],
            // ),
            // //List View Dinamis
            // child: ListView.builder(
            //   itemCount: bulan.length,
            //   itemBuilder: ((context, index) {
            //     return Container(
            //       padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            //       child: Column(
            //         children: [
            //           Text(bulan[index], style: TextStyle(fontSize: 30)),
            //         ],
            //       ),
            //     );
            //   }),
            // ),
            //List View Separated
            child: ListView.separated(
              separatorBuilder: (context, position) {
                //separator dilakukan tiap kelipatan 3
                if (position % 3 == 0) {
                  return Container(
                      color: Colors.green, child: Text("ini separator"));
                } else {
                  return Divider();
                }
              },
              itemCount: bulan.length,
              itemBuilder: ((context, index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Column(
                    children: [
                      Text(bulan[index], style: TextStyle(fontSize: 30)),
                    ],
                  ),
                );
              }),
            ),
          ),
        ));
  }
}
