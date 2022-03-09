import 'funiversitas.dart';
import 'status.dart';

class Mahasiswa extends Universitas implements Status{
  String? _nama;
  String? _NRP;
  int _SKS = 0;
  int _IPS = 0;
  int _IPK = 0;

  Mahasiswa(String? namaUniveritas, String nama, String nrp, int sks, int ips, int ipk) : super(namaUniveritas, 0);
}