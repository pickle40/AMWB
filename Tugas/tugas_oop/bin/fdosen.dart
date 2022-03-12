import 'fpegawai.dart';

class LB extends Dosen{
  LB(String? namaUniveritas, int gajiDasar, String nama, String nip, String mkajar, int sks) : super(namaUniveritas, gajiDasar, nama, nip, mkajar, sks);
  
}

class Tamu extends Dosen{
  Tamu(String? namaUniveritas, int gajiDasar, String nama, String nip, String mkajar, int sks) : super(namaUniveritas, gajiDasar, nama, nip, mkajar, sks);
  
}

class Tetap extends Dosen{
  int _tunjGaji = 0;

  Tetap(String? namaUniveritas, int gajiDasar, String nama, String nip, String mkajar, int sks, int tunjgaji) : super(namaUniveritas, gajiDasar, nama, nip, mkajar, sks);
  
}