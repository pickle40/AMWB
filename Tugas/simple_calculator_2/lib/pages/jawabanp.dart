import 'package:flutter/material.dart';

class halamanJawaban extends StatefulWidget {
  final double result;

  const halamanJawaban({Key? key, required this.result}) : super(key: key);

  @override
  State<halamanJawaban> createState() => _halamanJawabanState();
}

class _halamanJawabanState extends State<halamanJawaban> {
  double temp = 0.0;
  double tempText = 0.0;
  int counter = 0;
  List<double> hasil = [];

  @override
  Widget build(BuildContext context) {
    setState(() {
      temp = widget.result;
      tempText = temp;
      hasil.add(temp);
      temp = 0.0;
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jawaban"),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "Hasil Jawaban:",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Text(
                  tempText.toString(),
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: Navigator.of(context).pop,
                child: Text("Back"),
              ),
              Text(
                "History Jawaban:",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: hasil.length,
                  itemBuilder: (context, index) {
                    if (hasil[index] > 10.0) {
                      return Dismissible(
                        key: Key(hasil[index].toString()),
                        background: Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          alignment: Alignment.centerLeft,
                          color: Colors.green,
                          child: Icon(Icons.check),
                        ),
                        secondaryBackground: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          alignment: Alignment.centerRight,
                          color: Colors.red,
                          child: Icon(Icons.cancel),
                        ),
                        confirmDismiss: (direction) async {
                          if (direction == DismissDirection.endToStart) {
                            return false;
                          } else {
                            return true;
                          }
                        },
                        onDismissed: (direction) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    '${hasil[index].toString()} dismissed')),
                          );
                          setState(() {
                            hasil.removeAt(index);
                          });
                        },
                        child: ListTile(
                            title: Text(hasil[index].toString()),
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(hasil[index].toString()),
                                ),
                              );
                            }),
                      );
                    } else {
                      return Text(
                        "Jawaban kurang dari 10",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
