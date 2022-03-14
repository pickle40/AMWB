import 'dart:io';
import 'fdosen.dart';
import 'fmahasiswa.dart';
import 'fpegawai.dart';
import 'funiversitas.dart';

void main(List<String> arguments) {
  var dataUniversitas;
  var dataMahasiswa;
  var dataDosen;
  var dataStaff;

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
    print('4. Lihat Data Keseluruhan (Pilihan 1-3 harus terisi)');
    stdout.writeln();
    print('Pilih untuk isi Data: ');
    input = stdin.readLineSync();
    int pilih = int.parse(input!);

    //DATA MAHASISWA
    if(pilih == 1){
      int jumSKS;
      double IPS;

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
      do{
        print('Masukkan IPS Mahasiswa: ');
        input = stdin.readLineSync();
        IPS = double.parse(input!);
          if(IPS < 0){
            print('Input tidak bisa Negatif!');
          }
          else{
            if(IPS > 4.00){
              print('IPS tidak bisa lebih dari 4.00!');
            }
          }    
        }while(IPS > 4.00);
      dataMahasiswa = Mahasiswa(dataUniversitas.namaUniversitas, namaMahasiswa!, nrpMahasiswa!, jumSKS, IPS);
      print('Masukkan status Mahasiswa [Aktif/Cuti]:');
      input = stdin.readLineSync();
      dataMahasiswa.statusMahasiswa(input);
      //PRINT
      print('Nama: ${dataMahasiswa.namaMahasiswa}');
      print('NRP: ${dataMahasiswa.nrpMahasiswa}');
      print('Jumlah SKS diambil: ${dataMahasiswa.sksMahasiswa} SKS');
      print('IPK Mahasiswa: ${dataMahasiswa.hasilIPK()}');
      print('Status Mahasiswa: ${dataMahasiswa.status()}');
      stdout.writeln();
    }
    //DATA DOSEN
    else if(pilih == 2){
      int jumSKS;
      int tunjGaji;
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
      //PRINT
      print('Nama: ${dataDosen.namaDosen}');
      print('NIP: ${dataDosen.nipDosen}');
      print('MataKuliah: ${dataDosen.mkAjar}');
      print('Jumlah SKS diajar: ${dataDosen.sks} SKS');
      print('Jenis: ${dataDosen.jenis()}');
      print('Total Gaji yang dimiliki: Rp. ${dataDosen.totalGaji()}');
      stdout.writeln();
    }
    //DATA STAFF
    else if(pilih == 3){
      int tunjGaji;
      int jumCuti;
      int jumHadir;

      print('Masukkan nama Staff:');
      String? namaStaff = stdin.readLineSync();
      print('Masukkan NIS Staff:');
      String? nisStaff = stdin.readLineSync();
      print('Masukkan jumlah HADIR Staff:');
      input = stdin.readLineSync();
      jumHadir = int.parse(input!);
      print('Masukkan jumlah Cuti yang digunakan:');
      input = stdin.readLineSync();
      jumCuti = int.parse(input!);
      print('Masukkan tunjangan gaji Staff:');
      input = stdin.readLineSync();
      tunjGaji = int.parse(input!);
      dataStaff = Staff(dataUniversitas.namaUniversitas, dataUniversitas.gajiDasarUniversitas, namaStaff!, nisStaff!, jumCuti, tunjGaji, jumHadir);
      print('Masukkan Kehadiran Staff saat ini [Hadir/Cuti]:');
      input = stdin.readLineSync();
      dataStaff.statusStaff(input!);
      //PRINT
      print('STAFF');
      print('Nama: ${dataStaff.namaStaff}');
      print('NIS: ${dataStaff.nisStaff}');
      print('Jumlah Hadir: ${dataStaff.jumMasuk} Hari');
      print('Sisa Cuti sekarang: ${dataStaff.sisaCuti()} kali');
      print('Total gaji yang dimiliki: Rp. ${dataStaff.totalGaji()}');
      print('Status Staff saat ini: ${dataStaff.status()}');
      stdout.writeln();
    }
    else if(pilih == 4){
      print('=====Data CIVITAS ${dataUniversitas.namaUniversitas}=====');
      stdout.writeln();
      // print('DOSEN');
      // print('Nama: ${dataDosen.namaDosen}');
      // print('NIP: ${dataDosen.nipDosen}');
      // print('MataKuliah: ${dataDosen.mkAjar}');
      // print('Jumlah SKS diajar: ${dataDosen.sks} SKS');
      // print('Jenis: ${dataDosen.jenis()}');
      // print('Total Gaji yang dimiliki: Rp. ${dataDosen.totalGaji()}');  
      // stdout.writeln();
      // print('MAHASISWA');
      // print('Nama: ${dataMahasiswa.namaMahasiswa}');
      // print('NRP: ${dataMahasiswa.nrpMahasiswa}');
      // print('Jumlah SKS diambil: ${dataMahasiswa.sksMahasiswa} SKS');
      // print('IPK Mahasiswa: ${dataMahasiswa.hasilIPK()}');
      // print('Status Mahasiswa: ${dataMahasiswa.status()}');
      // stdout.writeln();
      // print('STAFF');
      // print('Nama: ${dataStaff.namaStaff}');
      // print('NIS: ${dataStaff.nisStaff}');
      // print('Jumlah Hadir: ${dataStaff.jumMasuk} Hari');
      // print('Sisa Cuti sekarang: ${dataStaff.sisaCuti()} kali');
      // print('Total gaji yang dimiliki: Rp. ${dataStaff.totalGaji()}');
      // print('Status Staff saat ini: ${dataStaff.status()}');
      // stdout.writeln();
    }
    else{
      break;
    }
  }while(true);
}