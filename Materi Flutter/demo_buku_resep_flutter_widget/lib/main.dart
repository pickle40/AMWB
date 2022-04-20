import 'package:demo_buku_resep_flutter_widget/model/mresep.dart';
import 'package:demo_buku_resep_flutter_widget/pages/detresetp.dart';
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
      title: "Buku Resep",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buku Resep"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: MResep.isiResep.length,
              itemBuilder: (BuildContext context, int index) {
                //Gesture Detector untuk membuka detail dari sebuah card saat di klik
                return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            //Memanggil fungsi halaman detresep.dart dengan parameter function yang dibuat
                            //untuk ke halaman detresep.dart
                            return DetResep(postresep: MResep.isiResep[index]);
                      }));
                    },
                    child: resepCard(MResep.isiResep[index]));
              }),
        ),
      ),
    );
  }

  Widget resepCard(MResep resep) {
    return Card(
      child: Column(
        children: [
          Image.network(resep.gambarURL),
          SizedBox(
            height: 10,
          ),
          Text(
            resep.namamenu,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
