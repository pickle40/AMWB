import 'fperson.dart';
import 'tugas.dart';

class PegawaiKontrak extends Person implements Tugas{
  int tunjGaji = 0;

  PegawaiKontrak(String? nama, int usia, int umk, int tunjGaji) : super(nama, usia, umk){
    this.tunjGaji = tunjGaji;
  }

  get Gaji{
    return (umk+tunjGaji);
  }

  @override
  String tugas() {
    // TODO: implement tugas
    return 'Kontrak';
  }

}

class PegawaiTetap extends Person implements Tugas{
  int tunjGaji = 0;

  PegawaiTetap(String? nama, int usia, int umk, int tunjGaji) : super(nama, usia, umk){
    this.tunjGaji = tunjGaji;
  }

  get Gaji{
    return (umk+tunjGaji);
  }

  @override
  String tugas() {
    // TODO: implement tugas
    return 'Tetap';
  }
}