import 'dart:io';

import 'fmahasiswa.dart';
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
    print('4. Lihat Data Keseluruhan');
    stdout.writeln();
    print('Pilih untuk isi Data: ');
    input = stdin.readLineSync();
    int pilih = int.parse(input!);

    if(pilih == 1){
      var dataMahasiswa;
      int jumSKS;
      print('Masukkan nama Mahasiswa:');
      String? namaMahasiswa = stdin.readLineSync();
      print('Masukkan NRP Mahasiswa:');
      String? nrpMahasiswa = stdin.readLineSync();
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
      dataMahasiswa = Mahasiswa(dataUniversitas.namaUniversitas, namaMahasiswa!, nrpMahasiswa!, jumSKS);
      print('Masukkan status Mahasiswa [Aktif/Cuti]:');
      input = stdin.readLineSync();
      dataMahasiswa.statusMahasiswa(input);
    }
    else if(pilih == 2){
      var dataDosen;
      int jumSKS;
      print('Masukkan nama Dosen:');
      String? namaDosen = stdin.readLineSync();
      print('Masukkan NIP Dosen:');
      String? nipDosen = stdin.readLineSync();
      print('Jenis Dosen:');
      print('1. Dosen LB');
      print('2. Dosen Tetap');
      print('3. Dosen Tamu');
      stdout.writeln();
      print('Pilih untuk jenis dosen:');
      input = stdin.readLineSync();
      int pilih = int.parse(input!);
      if(pilih == 1){
        var LB;
      }
      else if(pilih == 2){
        var Tetap;
      }
      else if(pilih == 3){
        var Tamu;
      }
      else{
        print('Pilihan hanya 1 hingga 3');
      }
    }
    else if(pilih == 3){

    }
    else if(pilih == 4){

    }
    else{
      break;
    }
  }while(true);
}
