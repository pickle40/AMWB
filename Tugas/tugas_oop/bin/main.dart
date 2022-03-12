import 'dart:io';

import 'funiversitas.dart';

void main(List<String> arguments) {
  var dataUniversitas;
  String? input;
  do
  {
    print('Masukkan nama universitas:');
    String? namaUniversitas = stdin.readLineSync();
    print('Masukkan gaji dasar universitas:');
    input = stdin.readLineSync();
    int gajiDasarUniversitas = int.parse(input!);
    dataUniversitas = Universitas(namaUniversitas!, gajiDasarUniversitas);
    stdout.writeln();
    print('1. Isi Data Mahasiswa');
    print('2. Isi Data Dosen');
    print('3. Isi Data Staff');
    stdout.writeln();
    print('Pilih untuk isi Data: ');
    input = stdin.readLineSync();
    int pilih = int.parse(input!);

    if(pilih == 1){

    }
    else if(pilih == 2){

    }
    else if(pilih == 3){

    }
    else{
      false;
    }
  }while(true);
}
