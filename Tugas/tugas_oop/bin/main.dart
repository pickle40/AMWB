import 'dart:io';

import 'fdosen.dart';
import 'fmahasiswa.dart';
import 'funiversitas.dart';

void main(List<String> arguments) {
  var dataUniversitas;
  var dataMahasiswa;
  var dataDosen;
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
      stdout.writeln();
    }
    else if(pilih == 2){
      int jumSKS;
      print('Masukkan nama Dosen:');
      String? namaDosen = stdin.readLineSync();
      print('Masukkan NIP Dosen:');
      String? nipDosen = stdin.readLineSync();
      stdout.writeln();
      print('Jenis Dosen:');
      print('1. Dosen LB');
      print('2. Dosen Tamu');
      print('3. Dosen Tetap');
      stdout.writeln();
      print('Pilih untuk jenis dosen:');
      input = stdin.readLineSync();
      int pilih = int.parse(input!);
      if(pilih == 1){
        print('Masukkan Mata Kuliah yang Diajar:');
        String? mkAjar = stdin.readLineSync();
        print('Masukkan jumlah sks yang diajar:');
        input = stdin.readLineSync();
        jumSKS = int.parse(input!);
        dataDosen = LB(dataUniversitas.namaUniversitas, dataUniversitas.gajiDasarUniversitas, namaDosen!, nipDosen!, mkAjar!, jumSKS);
      }
      else if(pilih == 2){
        int tunjGaji;
        print('Masukkan Mata Kuliah yang Diajar:');
        String? mkAjar = stdin.readLineSync();
        print('Masukkan jumlah sks yang diajar:');
        input = stdin.readLineSync();
        jumSKS = int.parse(input!);
        do{
          print('Masukkan jumlah tunjangan:');
          input = stdin.readLineSync();
          tunjGaji = int.parse(input!);
          if(tunjGaji < 0){
            print('Input Tunjangan Gaji tidak boleh negatif!');
          }
          else{
            dataDosen = Tamu(dataUniversitas.namaUniversitas, 0, namaDosen!, nipDosen!, mkAjar!, jumSKS, tunjGaji);
          }
        }while(tunjGaji < 0);
      }
      else if(pilih == 3){
        int tunjGaji;
        print('Masukkan Mata Kuliah yang Diajar:');
        String? mkAjar = stdin.readLineSync();
        print('Masukkan jumlah sks yang diajar:');
        input = stdin.readLineSync();
        jumSKS = int.parse(input!);
        do{
          print('Masukkan jumlah tunjangan:');
          input = stdin.readLineSync();
          tunjGaji = int.parse(input!);
          if(tunjGaji < 0){
            print('Input Tunjangan Gaji tidak boleh negatif!');
          }
          else{
            dataDosen = Tetap(dataUniversitas.namaUniversitas, dataUniversitas.gajiDasarUniversitas, namaDosen!, nipDosen!, mkAjar!, jumSKS, tunjGaji);
          }
        }while(tunjGaji < 0);
      }
      else{
        print('Pilihan hanya 1 hingga 3');
      }
      stdout.writeln();
    }
    else if(pilih == 3){

      stdout.writeln();
    }
    else if(pilih == 4){
      print('=====Data CIVITAS ${dataUniversitas.namaUniversitas}=====');
      stdout.writeln();
      print('DOSEN');
      print('Nama: ${dataDosen.namaDosen}');
      print('NIP: ${dataDosen.nipDosen}');
      print('MataKuliah: ${dataDosen.mkAjar}');
      print('');
      stdout.writeln();
    }
    else{
      break;
    }
  }while(true);
}
