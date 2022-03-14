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

  Mahasiswa(String? namaUniveritas, String nama, String nrp, int sks, double ips) : super(namaUniveritas, 0){
    _SKS = sks;
    _nama = nama;
    _NRP = nrp;
    _IPS = ips;
  }

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

    return _IPK = _IPS;
  }

  String get namaMahasiswa => this._nama!;
  String get nrpMahasiswa => this._NRP!;
  int get sksMahasiswa => this._SKS;
}