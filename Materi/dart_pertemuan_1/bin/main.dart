import 'ffungsi.dart';
import 'fpegawai.dart';
import 'fperson.dart';
import 'dart:io';

void main(){
  //Person p1 = new Person();
  // //menggunakan pemanggilan fungsi
  // p1.setNama("Joni");
  // print(p1.getNama());

  // //menggunakan fungsi setter dan getter
  // p1.nama = 'JoniG';
  // print(p1.nama);

  // //DEMO : CASCADE NOTATION
  // p1
  //   .. nama = 'Rudi'
  //   .. umk = 5000000
  //   .. usia = 50;
  // print('Nama : ${p1.nama} - Usia : ${p1.usia} - UMK : ${p1.umk}');

  // //DEMO : INHERITANCE
  // PegawaiKontrak pg1 = PegawaiKontrak('Umar', 40, 5000000, 500000);
  // print('${pg1.nama}, Gaji ${pg1.Gaji} tugasnya adalah ${pg1.tugas()}');

  // PegawaiTetap pg2 = PegawaiTetap('Susi', 30, 1500000, 100000);
  //   print('${pg2.nama}, Gaji ${pg2.Gaji} tugasnya adalah ${pg2.tugas()}');

  //DEMO : MIXIN
  var sm1 = Salesman('Udin', 25, 1000000, 200000);
  print('Nama : ${sm1.nama} - Tugas : ${sm1.tugas()}');
  sm1.absensi();
  sm1.target();
  sm1.tugas();
  stdout.writeln();

  var st1 = Staff('Ruben', 22, 3000000, 300000);
  print('Nama : ${st1.nama} - Tugas : ${st1.tugas()}');
  st1.absensi();
  st1.tanggungjawab();
  stdout.writeln();

  var st2 = StafKo('Imam', 20, 1000000, 0);
  print('Nama : ${st2.nama} - Tugas : ${st2.tugas()}');
  st2.absensi();

}