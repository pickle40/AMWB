import 'dart:io';

void main(List<String> arguments) {
    stdout.write("Masukkan angka : ");
    String? input = stdin.readLineSync();
    int angka = int.parse(input!);

  if(angka % 2 == 0){
    //segitiga atas
    for(int i=0; i < angka; i++){
      for(int j=angka-i; j>1; j--){
        stdout.write(" ");
      }
      for(int j=0; j<=i*2;j++){
        stdout.write("*");
      }
      stdout.writeln();
    }
    //segitiga bawah
    for(int i=angka - 2; i >= 0; i--){
      for(int j=angka-i; j>1; j--){
        stdout.write(" ");
      }
      for(int j=0; j<=i*2;j++){
        stdout.write("*");
      }
      stdout.writeln();
    }
  }
  else{
    for(int i=0; i<angka; i++){
      //segitiga rata kanan
      for(int j=0; j<=i+angka;j++){
        stdout.write(" ");
      }
      for(int j=0; j<=angka-1-i; j++){
        stdout.write("*");
      }
      stdout.writeln();
    }
    //segitiga rata kiri
    for(int i=0;i<angka;i++){
      for(int j=angka; j<=i;j++){
        stdout.write(" ");
      }
      for(int j=0; j<=angka-1-i; j++){
        stdout.write("*");
      }
      stdout.writeln();
    }
  }
}
