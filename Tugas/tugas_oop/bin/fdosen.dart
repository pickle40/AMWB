import 'fpegawai.dart';
import 'status.dart';

class LB extends Dosen implements Jenis{
  int _totalgaji = 0;
  int _sksAjar = 40000;
  int _sks = 0;

  LB(String? namaUniveritas, int gajiDasar, String nama, String nip, String mkajar, int sks) : super(namaUniveritas, gajiDasar, nama, nip, mkajar, sks){
    _sks = sks;
  }

  @override
  String jenis() {
    // TODO: implement jenis
    return 'Dosen LB';
  }

  int get sks => this._sks;

  String totalGaji(){
    return 'Gaji Banyak';
  }
}

class Tamu extends Dosen implements Jenis{
  int _tunjGaji = 0;
  int _totalgaji = 0;
  int _sksAjar = 40000;
  int _sks = 0;

  Tamu(String? namaUniveritas, int gajiDasar, String? nama, String? nip, String? mkajar, int sks, int tunjgaji) : super(namaUniveritas, 0, nama, nip, mkajar, sks){
    _sks = sks;
    _tunjGaji = tunjgaji;
  }
  
  @override
  String jenis() {
    // TODO: implement jenis
    return 'Dosen Tamu';
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
  int totalgaji = 0;
  int _sksAjar = 40000;
  int _sks = 0;
  int _gajiDasar = 0;

  Tetap(String? namaUniveritas, int gajiDasar, String? nama, String? nip, String? mkajar, int sks, int tunjgaji) : super(namaUniveritas, gajiDasar, nama, nip, mkajar, sks){
    _gajiDasar = gajiDasar;
    _sks = sks;
    _tunjGaji = tunjgaji;
  }
  
  @override
  String jenis() {
    // TODO: implement jenis
    return 'Dosen Tetap';
  }

  int get tunjGaji => this._tunjGaji;
  int get sks => this._sks;
  int get gajiDasar => this._gajiDasar;

  int totalGaji(){
    totalgaji = _gajiDasar + _sks*_sksAjar + _tunjGaji;
    return totalgaji;
  }
}