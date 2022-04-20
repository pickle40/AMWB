import 'package:flutter/material.dart';

import '../model/mresep.dart';

class DetResep extends StatefulWidget {
  //buat variabel baru untuk passing parameter dari halaman main.dart
  final MResep postresep;
  //required berfungsi sebagai kebutuhan apabila di main tidak memberikan variabel MResep,
  //maka akan error saat pemanggilan halaman ini pada main.dart
  const DetResep({Key? key, required this.postresep}) : super(key: key);

  @override
  State<DetResep> createState() => _DetResepState();
}

class _DetResepState extends State<DetResep> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Resep"),
        ),
        body: Column(
          children: [
            Image.network(widget.postresep.gambarURL),
            SizedBox(height: 10),
            Text(
              widget.postresep.namamenu,
              style: TextStyle(fontSize: 20),
            ),
            Padding(
                padding: EdgeInsets.all(15), child: Text(widget.postresep.URL)),
            //ElevatedButton untuk melakukan navigasi ke halaman sebelumnya
            ElevatedButton(
                onPressed: Navigator.of(context).pop, child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
