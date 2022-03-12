import 'dart:io';

import 'funiversitas.dart';

void main(List<String> arguments) {
  var dataUniversitas;
  String? input;
    print('Masukkan nama universitas:');
    String? namaUniversitas = stdin.readLineSync();
    print('Masukkan gaji dasar universitas:');
    input = stdin.readLineSync();
    int gajiDasarUniversitas = int.parse(input!);
    dataUniversitas = Universitas(namaUniversitas!, gajiDasarUniversitas);
    stdout.writeln();
  do{
    print('SELAMAT DATANG DI ${dataUniversitas.namaUniversitas}');
    print('1. Isi Data Mahasiswa');
    print('2. Isi Data Dosen');
    print('3. Isi Data Staff');
    stdout.writeln();
    print('Pilih untuk isi Data: ');
    input = stdin.readLineSync();
    int pilih = int.parse(input!);

    if(pilih == 1){
      int jumSKS;
      do{
        print('Masukkan jumlah SKS yang diambil Mahasiswa: ');
        input = stdin.readLineSync();
        jumSKS = int.parse(input!);
          if(jumSKS < 0){
            print('Input tidak bisa Negatif!');
          }
          else{
            if(jumSKS < 2){
              print('Jumlah SKS yang diambil kurang dari 2. Silahkan input ulang!');
            }
            else if(jumSKS > 24){
              print('Jumlah SKS yang diambil lebih besar dari 24. Silahkan input ulang!');
            }
          }    
        }while(jumSKS < 2 || jumSKS > 24);
      
      
    }
    else if(pilih == 2){

    }
    else if(pilih == 3){

    }
    else{
      break;
    }
  }while(true);
}
