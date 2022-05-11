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
  String input = "";
  List<String> negara = [
    'Indonesia',
    'Singapore',
    'China',
    'Thailand',
    'Amerika Serikat',
    'Australia',
    'United Kingdom',
    'Ukraina',
    'Russia',
    'India',
    'Jepang',
    'Finland',
    'Sri Lanka',
    'Belanda',
    'Jerman',
    'Taiwan',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coba Widget",
      home: Scaffold(
        appBar: AppBar(title: Text("Coba Widget")),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "Contoh dynamic listview",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukkan Nama Negara',
                ),
                //onchanged digunakan untuk mengambil value pada textfield
                onChanged: (value) {
                  input = value;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    negara.add(input.toString());
                  });
                },
                child: Text("Tambah Data"),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: negara.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: Key(negara[index]),
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
                      //digunakan untuk arah hapus ke kanan atau ke kiri (to end or to start)
                      confirmDismiss: (direction) async {
                        if (direction == DismissDirection.endToStart) {
                          return false;
                        } else {
                          return true;
                        }
                      },
                      onDismissed: (direction) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('${negara[index]} dismissed')),
                        );
                        setState(() {
                          negara.removeAt(index);
                        });
                      },
                      child: ListTile(
                        title: Text(negara[index]),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(negara[index]),
                            ),
                          );
                        },
                      ),
                    );
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
