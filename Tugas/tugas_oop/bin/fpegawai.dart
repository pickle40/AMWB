import 'funiversitas.dart';
import 'status.dart';

class Dosen extends Universitas{
  String? _nama;
  String? _NIP;
  String? _MKajar;
  String? _JenisDosen;
  int _SKS = 0;

  Dosen(String? namaUniveritas, int gajiDasar, String nama, String nip, String mkajar, int sks) : super(namaUniveritas, gajiDasar);

  set namaDosen(String nama){
    _nama = nama;
  }
  set nipDosen(String nip){
    _NIP = nip;
  }
  set mkAjar(String mkAjar){
    _MKajar = mkAjar;
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
  String? _Status;
  int _jumCuti = 0;
  int _tunjangan = 0;
  int _totalgaji = 0;

  Staff(String? namaUniveritas, int gajiDasar, String nama, String nis, int jumcuti, int tunjgaji) : super(namaUniveritas, gajiDasar);

  @override
  String status() {
    // TODO: implement status
    return 'Hadir';
  }

}