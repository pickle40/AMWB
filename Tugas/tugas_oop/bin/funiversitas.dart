class Universitas{
  String? _namaUniveritas;
  int _gajiDasar = 0;

  Universitas(this._namaUniveritas, this._gajiDasar);

  set namaUniversitas(String nama){
    _namaUniveritas = nama;
  }

  set gajiDasarUniversitas(int gajiDasar){
    _gajiDasar = gajiDasar;
  }

  String get namaUniversitas => this._namaUniveritas!;
  int get gajiDasarUniversitas => this._gajiDasar;
}