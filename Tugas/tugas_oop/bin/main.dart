import 'dart:html';
import 'dart:io';

import 'funiversitas.dart';

void main(List<String> arguments) {
  var Universitas;
  int? pilih;
  do
  {
    print('1. Isi Data Mahasiswa');
    print('2. Isi Data Dosen');
    print('3. Isi Data Staff');
    stdout.writeln();
    print('Masukkan nama universitas:');
    String? namaUniversitas = stdin.readLineSync();
    print('Masukkan gaji dasar universitas:');
    String? input = stdin.readLineSync();
    int gajiDasarUniversitas = int.parse(input!);
    Universitas = Universitas(namaUniversitas, gajiDasarUniversitas);
    print('Pilih untuk isi Data: ');
    String? input1 = stdin.readLineSync();
    int pilih = int.parse(input1!);

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
