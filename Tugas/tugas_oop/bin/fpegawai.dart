import 'funiversitas.dart';
import 'status.dart';

class Dosen extends Universitas{
  String? _nama;
  String? _NIP;
  String? _MKajar;
  int _SKS = 0;
  int _totalgaji = 0;

  Dosen(String? namaUniveritas, int gajiDasar, String nama, String nip, int mkajar, int sks) : super(namaUniveritas, gajiDasar);

}

class Staff extends Universitas implements Status{
  String? _nama;
  String? _NIS;
  String? _Status;
  int _jumCuti = 0;
  int _tunjangan = 0;
  int _totalgaji = 0;

  Staff(String? namaUniveritas, int gajiDasar, String nama, String nis, int jumcuti, int tunjgaji) : super(namaUniveritas, gajiDasar);

}