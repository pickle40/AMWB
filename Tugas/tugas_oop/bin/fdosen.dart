import 'fpegawai.dart';
import 'status.dart';

class LB extends Dosen implements Jenis{
  int _totalgaji = 0;
  int _sksAjar = 40000;

  LB(String? namaUniveritas, int gajiDasar, String nama, String nip, String mkajar, int sks) : super(namaUniveritas, gajiDasar, nama, nip, mkajar, sks);

  @override
  String jenis() {
    // TODO: implement jenis
    return 'Dosen LB';
  }
}

class Tamu extends Dosen implements Jenis{
  int _tunjGaji = 0;
  int _totalgaji = 0;
  int _sksAjar = 40000;
  int _sks = 0;

  Tamu(String? namaUniveritas, int gajiDasar, String nama, String nip, String mkajar, int sks, int tunjGaji) : super(namaUniveritas, 0, nama, nip, mkajar, sks);
  
  @override
  String jenis() {
    // TODO: implement jenis
    return 'Dosen Tamu';
  }
  
  set tunjGaji(int tunjGaji){
    _tunjGaji = tunjGaji;
  }
  set sks(int sks){
    _sks = sks;
  }
  int get tunjGaji => this._tunjGaji;
  int get sks => this._sks;

  int totalGaji(){
    _totalgaji = _sks*_sksAjar + _tunjGaji;
    return _totalgaji;
  }
}

class Tetap extends Dosen implements Jenis{
  int _tunjGaji = 0;
  int _totalgaji = 0;
  int _sksAjar = 40000;
  int _sks = 0;
  int _gajiDasar = 0;

  Tetap(String? namaUniveritas, int gajiDasar, String nama, String nip, String mkajar, int sks, int tunjgaji) : super(namaUniveritas, gajiDasar, nama, nip, mkajar, sks);
  
  @override
  String jenis() {
    // TODO: implement jenis
    return 'Dosen Tetap';
  }

  set tunjGaji(int tunjGaji){
    _tunjGaji = tunjGaji;
  }
  set sks(int sks){
    _sks = sks;
  }
  set gajiDasar(int gajiDasar){
    _gajiDasar = gajiDasar;
  }
  int get tunjGaji => this._tunjGaji;
  int get sks => this._sks;
  int get gajiDasar => this._gajiDasar;

  int totalGaji(){
    _totalgaji = _gajiDasar + _sks*_sksAjar + _tunjGaji;
    return _totalgaji;
  }
}