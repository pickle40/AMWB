import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Materi Text Widgets
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
        title: 'Percobaan Flutter',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Percobaan Pertama"),
              backgroundColor: Colors.green,
            ),
            body: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Widget Text"),
                    Text("Widget Text Bold",
                        style: TextStyle(
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue,
                            decoration: TextDecoration.combine([
                              TextDecoration.overline,
                              TextDecoration.underline
                            ]),
                            decorationThickness: 2.0,
                            decorationColor: Colors.red,
                            decorationStyle: TextDecorationStyle.double,
                            letterSpacing: 2.0,
                            wordSpacing: 10.0,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  blurRadius: 2.0,
                                  offset: Offset(1, 1))
                            ]))
                  ]),
            )));
  }
}

// // Materi TextField
// class _MyAppState extends State<MyApp> {
//   TextEditingController _tfController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _tfController.addListener(() {
//       printIsiTextField();
//     });
//   }

//   void printIsiTextField() {
//     print(_tfController.text);
//   }

//   void dispose() {
//     //perlu dibuat sebagai destructor
//     _tfController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Percobaan Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Percobaan Pertama"),
//           backgroundColor: Colors.green,
//         ),
//         body: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(children: [
//             TextField(
//               autofocus: true,
//               decoration: InputDecoration(prefixIcon: Icon(Icons.add_a_photo)),
//               //mengambil data dari input
//               onChanged: (text) {
//                 print(text);
//               },
//               //input sebagai password
//               obscureText: true,
//               //mengubah bentuk tulisan password
//               obscuringCharacter: '*',
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextField(
//                 textCapitalization: TextCapitalization.words,
//                 textDirection: TextDirection.rtl,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: "TextField ke-2",
//                     suffixIcon: Icon(Icons.add_task)),
//                 //menggunakan controller untuk get data sebagai input
//                 controller: _tfController)
//           ]),
//         ),
//       ),
//     );
//   }
// }

// //Materi Wrap
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Percobaan Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Percobaan Pertama"),
//           backgroundColor: Colors.green,
//         ),
//         body: Container(
//           padding: EdgeInsets.all(20),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Container(
//               padding: EdgeInsets.all(10),
//               width: double.infinity,
//               height: 120,
//               color: Colors.amber,
//               child: Wrap(
//                 //runSpacing: 10,
//                 spacing: 10,
//                 alignment: WrapAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba1"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba2"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba3"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba4"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba5"),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
//               padding: EdgeInsets.all(10),
//               width: double.infinity,
//               height: 120,
//               color: Colors.amber,
//               child: Wrap(
//                 direction: Axis.vertical,
//                 spacing: 4,
//                 runSpacing: 10,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba1"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba2"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba3"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba4"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("coba5"),
//                   ),
//                 ],
//               ),
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }

// //Materi Icons
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Percobaan Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Percobaan Pertama"),
//           backgroundColor: Colors.green,
//         ),
//         body: Container(
//           padding: EdgeInsets.all(20),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Icon(Icons.dangerous, size: 50, color: Colors.orange),
//             Icon(MyCustomIco.emo_beer, size: 50, color: Colors.green)
//           ]),
//         ),
//       ),
//     );
//   }
// }

// //Materi Image
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Percobaan Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Percobaan Pertama"),
//           backgroundColor: Colors.green,
//         ),
//         body: Container(
//           padding: EdgeInsets.all(20),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Image.asset("assets/images/einstein3.jpg",
//                 width: 200,
//                 height: 200,
//                 fit: BoxFit.cover,
//                 color: Colors.brown,
//                 colorBlendMode: BlendMode.color),
//             Image.network(
//               'https://img.freepik.com/free-vector/welcome-back-school-cartoon-professor-character_74855-589.jpg?size=338&ext=jpg',
//               //apabila gambar terlalu overload
//               width: 200,
//               height: 200,
//               loadingBuilder: (context, child, loadingProgress) {
//                 return loadingProgress == null ? child : Text('Loading...');
//               },
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }

// //Materi Elevated Button
// class _MyAppState extends State<MyApp> {
//   TextEditingController _tfController = TextEditingController();
//   TextEditingController _dataController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _tfController.addListener(() {
//       printIsiTextField();
//     });
//   }

//   void printIsiTextField() {
//     print(_tfController.text);
//   }

//   void dispose() {
//     _tfController.dispose();
//     _dataController.dispose();
//     super.dispose();
//   }

//   void fungsiButtonKlik() {
//     print("Button Klik");
//   }

//   String data = ' ';
//   void tampilkanData() {
//     setState(() {
//       data = _dataController.text;
//       print(data);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Percobaan Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Percobaan Pertama"),
//           backgroundColor: Colors.green,
//         ),
//         body: Container(
//           padding: EdgeInsets.all(20),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             ElevatedButton(onPressed: () {}, child: Text("Button 1")),
//             TextField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(), labelText: "Data"),
//                 controller: _dataController),
//             ElevatedButton(
//                 onPressed: () {
//                   tampilkanData();
//                 },
//                 child: Text("Klik untuk menampilkan")),
//             Text("$data")
//           ]),
//         ),
//       ),
//     );
//   }
// }
