class Person {
  //untuk private gunakan '_' saat di declare
  String? _nama;
  int _usia = 0;
  int _umk = 0;

  Person(this._nama, this._usia, this._umk);

  // //Cara pertama : Menggunakan pemanggilan Fungsi
  // void setNama(String dtNama){
  //   this._nama = dtNama;
  // }

  // String getNama() => this._nama!;

  //Cara kedua : Menggunakan Setter dan Getter
  set nama(String dtNama){
    _nama = dtNama;
  }
  set usia(int dtUsia){
    _usia = dtUsia;
  }
  set umk(int dtUMK){
    _umk = dtUMK;
  }

  String get nama => this._nama!;
  int get usia => this._usia;
  int get umk => this._umk;
}