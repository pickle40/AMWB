import 'dart:io';

void main(List<String> arguments) {
    stdout.write("Masukkan angka : ");
    String? input = stdin.readLineSync();
    int angka = int.parse(input!);

    for(int i = 0; i< angka; i++){
        for(int j=0; j<i; j++){
          print("*");
        }
        for(int k=1; k<i; k++){
          print("*");
        }
    }
}