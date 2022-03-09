import 'funiversitas.dart';
import 'status.dart';

class Dosen extends Universitas implements Status{
  String? _nama;
  String? _NIP;
  String? _MKajar;
  int _SKS = 0;
  int _tunjangan = 0;
  int _totalgaji = 0;

  Dosen(String? namaUniveritas, int gajiDasar, String nama, String nrp, int sks, int ips, int ipk) : super(namaUniveritas, gajiDasar);

}