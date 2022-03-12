import 'dart:ffi';

import 'funiversitas.dart';
import 'status.dart';

class Mahasiswa extends Universitas implements Status{
  String? _nama;
  String? _NRP;
  int _SKS = 0;
  double _IPS = 0.00;
  double _IPK = 0.00;
  bool aktif = true;

  Mahasiswa(String? namaUniveritas, String nama, String nrp, int sks) : super(namaUniveritas, 0);

  @override
  String status() {
    // TODO: implement status
    if(aktif==true){
      return 'Aktif';
    }
    else{
      return 'Cuti';
    }
  }

  String statusMahasiswa(String input){
    if(input == "Aktif" || input == "aktif"){
      aktif = true;
      status();
    }
    else if(input == "Cuti" || input == "cuti"){
      aktif = false;
      status();
    }
    return status();
  }

  double hasilIPK(){

    return _IPK;
  }

  set namaMahasiswa(String nama){
    _nama = nama;
  }
  set nrpMahasiswa(String nrp){
    _NRP = nrp;
  }
  set sksMahasiswa(int sks){
    _SKS = sks;
  }

  String get namaMahasiswa => this._nama!;
  String get nrpMahasiswa => this._NRP!;
  int get sksMahasiswa => this._SKS;
}