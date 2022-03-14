import 'funiversitas.dart';
import 'status.dart';

class Dosen extends Universitas{
  String? _nama;
  String? _NIP;
  String? _MKajar;
  String? _JenisDosen;
  int _SKS = 0;

  Dosen(String? namaUniveritas, int gajiDasar, String? nama, String? nip, String? mkajar, int sks) : super(namaUniveritas, gajiDasar){
    _nama = nama;
    _NIP = nip;
    _MKajar = mkajar;
  }

  set jumSKSAjar(int sks){
    _SKS = sks;
  }

  String get namaDosen => this._nama!;
  String get nipDosen => this._NIP!;
  String get mkAjar => this._MKajar!;
  int get sksAjar => this._SKS;
}

class Staff extends Universitas implements Status{
  String? _nama;
  String? _NIS;
  int _jatahCuti = 12;
  int _jumCuti = 0;
  int _tunjangan = 0;
  int _jumMasuk = 0;
  int _gajiDasar = 0;
  int _totalgaji = 0;
  bool aktif = true;

  Staff(String? namaUniveritas, int gajiDasar, String? nama, String? nis, int jumcuti, int tunjgaji, int jumMasuk) : super(namaUniveritas, gajiDasar){
    _nama = nama;
    _NIS = nis;
    _jumCuti = jumcuti;
    _jumMasuk = jumMasuk;
    _tunjangan = tunjgaji;
    _gajiDasar = gajiDasar;
  }

  String get namaStaff => this._nama!;
  String get nisStaff => this._NIS!;
  int get jumMasuk => this._jumMasuk;

  @override
  String status() {
    // TODO: implement status
    if(aktif==true){
      return 'Hadir';
    }
    else{
      return 'Cuti';
    }
  }

  String statusStaff(String input){
    if(input == "Hadir" || input == "hadir"){
      aktif = true;
      status();
    }
    else if(input == "Cuti" || input == "cuti"){
      aktif = false;
      status();
    }
    return status();
  }

  int totalGaji(){
    _totalgaji = _jumMasuk*_tunjangan + _gajiDasar;

    return _totalgaji;
  }

  int sisaCuti(){
    _jatahCuti -= _jumCuti;
    if(_jatahCuti <= 0){
      return 0;
    }
    else{
      return _jatahCuti;
    }
  }

}