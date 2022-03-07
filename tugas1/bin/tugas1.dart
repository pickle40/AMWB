import 'dart:io';

void main(List<String> arguments) {
    stdout.write("Masukkan angka : ");
    String? input = stdin.readLineSync();
    int angka = int.parse(input!);
    int temp = 1;
    int counter = 1;
    int counter2 = 0;

  if(angka % 2 == 0){
    for(int i=0;i<angka;i++){
      for(int j=0;j<2;j++){
        for(int j=angka-i; j>=1; j--){
          stdout.write("$temp");
          temp++;
          if(temp > angka){
            temp = 1;
          }
        }
        for(int j=0; j<=i*2-1;j++){
          stdout.write(" ");
        }
      }
      stdout.writeln();
    }
  }
  else{
    //segitiga atas
    for(int i=0; i < angka; i++){
      for(int j=angka-i; j>1; j--){
        stdout.write("*");
      }
      for(int j=0; j<=i*2;j++){
        stdout.write("$counter");
      }
      stdout.writeln();
      counter++;
      counter2 = counter;
    }
    //segitiga bawah
    for(int i=angka - 2; i >= 0; i--){
      for(int j=angka-i; j>1; j--){
        stdout.write("*");
      }
      for(int j=0; j<=i*2;j++){
        stdout.write("$counter2");
      }
      stdout.writeln();
      counter2++;
    }
  }
}
