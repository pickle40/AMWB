import 'dart:io';

//Parameter Function
String hitung(String nama, {int? uang, int? pengeluaran}){
  int sisauang = uang! - pengeluaran!;
  return "$nama sisa uangnya sebesar $sisauang";
}

//Parameter Function Positional
String hitungpositional(String nama, [int? uang, int? pengeluaran]){
  int sisauang = uang! - pengeluaran!;
  return "$nama sisa uangnya sebesar $sisauang";
}

//DEMO : Higher Order
void fungsiHOrder(String nama, Function funcparam){
  print(nama + " " + funcparam(3,5).toString());
}

//DEMO : Closures
Function terimaData(data){
  return() => print("Data yang dikirim $data");
}

void main(List<String> arguments) {
  //DEMO : Closures - MAIN
  //Variable yang berisi fungsi
  var fmain = terimaData("abc");
  fmain();

  //DEMO : HIGHER ORDER - MAIN
  fungsiHOrder("F. Tambah", (a, b) => a+b);
  fungsiHOrder("F. Kali", (a, b) => a*b);

  //DEMO : First Class
  var total = (int bil1, int bil2){
    return bil1 + bil2;
  };
  print(total(5,5));

  //DEMO : Lambda Function
  var totallambda = (int bil1, int bil2) => bil1 + bil2;
  print(totallambda(5,5));

  //DEMO : Function Parameter
  print(hitung("David", uang: 100000, pengeluaran: 20000));
  print(hitungpositional("Merkurius", 100000, 50000));

  //DEMO : INPUT OUTPUT
  stdout.write("Masukkan kata : ");
  String? input = stdin.readLineSync();
  int angka = int.parse(input!);

  print(input);

  //DEMO : IF ELSE
  if(angka % 2 == 1){
    print("GANJIL");
  }
  else{
    print("GENAP");
  }

  //DEMO : SWITCH CASE
  switch(angka % 2){
    case 1:
      print("GANJIL SW");
      break;
    case 0:
      print("GENAP SW");
      break;
  }

  //DEMO : FOR
  for(int i=0; i<angka; i++){
    print("angka: $i");
  }

  //DEMO : DO WHILE
  while(angka > 0){
    print(angka);
    angka--;
  }
}