

import 'fpegawai.dart';
import 'tugas.dart';

class Salesman extends PegawaiTetap with Absensi, Target{
  Salesman(String? nama, int usia, int umk, int tunjGaji) : super(nama, usia, umk, tunjGaji);
  
}

class Staff extends PegawaiTetap with Absensi, TanggungJawab{
  Staff(String? nama, int usia, int umk, int tunjGaji) : super(nama, usia, umk, tunjGaji);
  
}

class StafKo extends PegawaiKontrak with Absensi{
  StafKo(String? nama, int usia, int umk, int tunjGaji) : super(nama, usia, umk, tunjGaji);
  
}